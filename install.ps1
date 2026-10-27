<#
.SYNOPSIS
Memasang satu atau semua skill dari repo ini ke direktori skill agent.

.DESCRIPTION
Setiap folder di skills/ yang berisi SKILL.md dianggap satu skill. Tanpa
-Skill, semua skill dipasang. Target default adalah DSH. Gunakan -Claude untuk
Claude Code, atau -Agents untuk Codex CLI dan agent lain yang membaca
standar .agents/skills.

Tanpa -Project, skill dipasang di level user sehingga berlaku di semua project.
Dengan -Project, skill dipasang di dalam satu project saja.

Hanya SKILL.md, README.md, LICENSE, dan references/ yang disalin. Folder ref/
berisi bahan riset lokal dan tidak pernah disalin.

.PARAMETER Skill
Nama skill yang dipasang. Bisa lebih dari satu, misalnya -Skill a,b. Default:
semua skill di skills/. Alias lama: -Name.

.PARAMETER List
Tampilkan nama skill yang tersedia, lalu keluar.

.PARAMETER Project
Pasang ke dalam project, bukan di direktori user.

.PARAMETER Path
Root project tujuan saat memakai -Project. Default: direktori kerja saat ini.

.PARAMETER Claude
Target Claude Code (~/.claude/skills atau <project>/.claude/skills).

.PARAMETER Agents
Target Codex CLI dan agent lain yang membaca ~/.agents/skills.

.EXAMPLE
.\install.ps1

Memasang semua skill di ~/.dsh/skills untuk DSH.

.EXAMPLE
.\install.ps1 -Skill web-design-anti-ai

Memasang satu skill di ~/.dsh/skills untuk DSH.

.EXAMPLE
.\install.ps1 -Agents -Project -Path D:\DEV\landing-page

Memasang semua skill di D:\DEV\landing-page\.agents\skills.
#>
[CmdletBinding()]
param(
    [Alias('Name')]
    [string[]]$Skill,
    [switch]$List,
    [switch]$Project,
    [switch]$Claude,
    [switch]$Agents,
    [string]$Path
)

$ErrorActionPreference = 'Stop'

if ($Claude -and $Agents) {
    throw 'Pilih salah satu: -Claude atau -Agents, bukan keduanya.'
}
if ($Path -and -not $Project) {
    throw '-Path hanya dipakai bersama -Project.'
}

$source = $PSScriptRoot
$skillsRoot = Join-Path $source 'skills'

if (-not (Test-Path -LiteralPath $skillsRoot -PathType Container)) {
    throw "Folder skills tidak ditemukan di $skillsRoot. Jalankan skrip ini dari akar repo."
}

$available = @(Get-ChildItem -LiteralPath $skillsRoot -Directory | Where-Object {
    Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md') -PathType Leaf
} | Sort-Object Name)

if ($available.Count -eq 0) {
    throw "Tidak ada skill di $skillsRoot. Setiap skill butuh SKILL.md di dalam foldernya."
}

foreach ($dir in $available) {
    $skillFile = Join-Path $dir.FullName 'SKILL.md'
    $match = Select-String -LiteralPath $skillFile -Pattern '^name:\s*(.+?)\s*$' | Select-Object -First 1
    if (-not $match) {
        throw "Frontmatter 'name' tidak ditemukan di $skillFile."
    }
    $declared = $match.Matches[0].Groups[1].Value.Trim().Trim('"').Trim("'")
    if ($declared -ne $dir.Name) {
        throw "Frontmatter name '$declared' tidak sama dengan nama folder '$($dir.Name)'."
    }
}

if ($List) {
    Write-Host "Skill di $skillsRoot`:"
    foreach ($dir in $available) {
        Write-Host "  $($dir.Name)"
    }
    return
}

$selected = @()
if ($Skill) {
    foreach ($name in $Skill) {
        $found = $available | Where-Object { $_.Name -eq $name }
        if (-not $found) {
            throw "Skill '$name' tidak ada. Pilihan: $($available.Name -join ', ')"
        }
        $selected += $found
    }
    $selected = @($selected | Sort-Object Name -Unique)
}
else {
    $selected = $available
}

$target = if ($Claude) { 'claude' } elseif ($Agents) { 'agents' } else { 'dsh' }
$container = switch ($target) {
    'claude' { '.claude' }
    'agents' { '.agents' }
    default { '.dsh' }
}

if ($Project) {
    $root = if ($Path) { (Resolve-Path -LiteralPath $Path).Path } else { (Get-Location).Path }
    $base = Join-Path $root $container
    $scope = "project $target ($root)"
}
else {
    $base = switch ($target) {
        'claude' { Join-Path $env:USERPROFILE '.claude' }
        'agents' { Join-Path $env:USERPROFILE '.agents' }
        default {
            if ($env:DSH_HOME) { $env:DSH_HOME } else { Join-Path $env:USERPROFILE '.dsh' }
        }
    }
    $scope = "user $target"
}

$skillsDest = Join-Path $base 'skills'
$totalFiles = 0
$totalMismatch = 0

foreach ($dir in $selected) {
    $dest = Join-Path $skillsDest $dir.Name
    $status = if (Test-Path -LiteralPath $dest) { 'memperbarui' } else { 'memasang' }
    Write-Host "$status skill '$($dir.Name)' ($scope)"
    Write-Host "  dari : $($dir.FullName)"
    Write-Host "  ke   : $dest"

    $files = @()
    foreach ($name in 'SKILL.md', 'README.md') {
        if (Test-Path -LiteralPath (Join-Path $dir.FullName $name)) {
            $files += $name
        }
    }
    $license = Join-Path $source 'LICENSE'
    if (Test-Path -LiteralPath $license) {
        $files += 'LICENSE'
    }

    $referencesSource = Join-Path $dir.FullName 'references'
    if (Test-Path -LiteralPath $referencesSource -PathType Container) {
        foreach ($file in Get-ChildItem -LiteralPath $referencesSource -Recurse -File) {
            $relative = $file.FullName.Substring($referencesSource.Length + 1).Replace('\', '/')
            $files += 'references/' + $relative
        }
    }

    New-Item -ItemType Directory -Force -Path $dest | Out-Null

    $mismatch = 0
    foreach ($relative in $files) {
        $sourceFile = if ($relative -eq 'LICENSE') { $license } else { Join-Path $dir.FullName $relative }
        $targetFile = Join-Path $dest $relative
        $targetDir = Split-Path -Parent $targetFile
        if ($targetDir) {
            New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
        }
        Copy-Item -LiteralPath $sourceFile -Destination $targetFile -Force

        $sourceHash = (Get-FileHash -LiteralPath $sourceFile -Algorithm SHA256).Hash
        $targetHash = (Get-FileHash -LiteralPath $targetFile -Algorithm SHA256).Hash
        if ($sourceHash -ne $targetHash) {
            Write-Warning "isi berbeda setelah salin: $relative"
            $mismatch++
        }
    }

    Write-Host "  $($files.Count) berkas disalin, $($files.Count - $mismatch) identik."
    $totalFiles += $files.Count
    $totalMismatch += $mismatch
    Write-Host ''
}

Write-Host "$($selected.Count) skill diproses ($totalFiles berkas) di $skillsDest."
if ($totalMismatch -gt 0) {
    Write-Host "$totalMismatch berkas berbeda setelah salin." -ForegroundColor Red
    exit 1
}

Write-Host 'Panggil dengan namanya di chat, atau biarkan agent memilihnya saat tugasnya cocok.'
