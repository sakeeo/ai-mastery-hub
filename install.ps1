<#
.SYNOPSIS
Memasang skill web-design-anti-ai ke direktori skill agent.

.DESCRIPTION
Menyalin SKILL.md, README.md, LICENSE, dan seluruh isi references/ ke direktori
skill. Target default adalah DSH. Gunakan -Claude untuk Claude Code, atau
-Agents untuk Codex CLI dan agent lain yang membaca standar .agents/skills.

Tanpa -Project, skill dipasang di level user sehingga berlaku di semua project.
Dengan -Project, skill dipasang di dalam satu project saja.

Folder ref/ tidak pernah disalin. Folder itu berisi bahan riset lokal dan
diabaikan oleh git.

.PARAMETER Project
Pasang ke dalam project, bukan di direktori user.

.PARAMETER Path
Root project tujuan saat memakai -Project. Default: direktori kerja saat ini.

.PARAMETER Claude
Target Claude Code (~/.claude/skills atau <project>/.claude/skills).

.PARAMETER Agents
Target Codex CLI dan agent lain yang membaca ~/.agents/skills.

.PARAMETER Name
Nama folder skill tujuan. Default: web-design-anti-ai.

.EXAMPLE
.\install.ps1

Memasang di ~/.dsh/skills/web-design-anti-ai untuk DSH.

.EXAMPLE
.\install.ps1 -Claude

Memasang di ~/.claude/skills/web-design-anti-ai untuk Claude Code.

.EXAMPLE
.\install.ps1 -Agents -Project -Path D:\DEV\landing-page

Memasang di D:\DEV\landing-page\.agents\skills\web-design-anti-ai.
#>
[CmdletBinding()]
param(
    [switch]$Project,
    [switch]$Claude,
    [switch]$Agents,
    [string]$Path,
    [string]$Name = 'web-design-anti-ai'
)

$ErrorActionPreference = 'Stop'

if ($Claude -and $Agents) {
    throw 'Pilih salah satu: -Claude atau -Agents, bukan keduanya.'
}
if ($Path -and -not $Project) {
    throw '-Path hanya dipakai bersama -Project.'
}

$source = $PSScriptRoot
if (-not (Test-Path (Join-Path $source 'SKILL.md'))) {
    throw "SKILL.md tidak ditemukan di $source. Jalankan skrip ini dari folder repo skill."
}

$target = if ($Claude) { 'claude' } elseif ($Agents) { 'agents' } else { 'dsh' }

if ($Project) {
    $root = if ($Path) { (Resolve-Path -LiteralPath $Path).Path } else { (Get-Location).Path }
    $container = switch ($target) {
        'claude' { '.claude' }
        'agents' { '.agents' }
        default { '.dsh' }
    }
    $dest = Join-Path $root "$container\skills\$Name"
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
    $dest = Join-Path $base "skills\$Name"
    $scope = "user $target"
}

$files = @('SKILL.md', 'README.md', 'LICENSE')
$referenceDir = Join-Path $source 'references'
if (Test-Path $referenceDir) {
    $files += Get-ChildItem $referenceDir -Filter '*.md' -File | ForEach-Object {
        Join-Path 'references' $_.Name
    }
}

$status = if (Test-Path $dest) { 'memperbarui' } else { 'memasang' }
Write-Host "$status skill '$Name' ($scope)"
Write-Host "  dari : $source"
Write-Host "  ke   : $dest"

New-Item -ItemType Directory -Force -Path (Join-Path $dest 'references') | Out-Null

foreach ($file in $files) {
    $targetFile = Join-Path $dest $file
    New-Item -ItemType Directory -Force -Path (Split-Path $targetFile) | Out-Null
    Copy-Item (Join-Path $source $file) $targetFile -Force
}

$mismatch = 0
foreach ($file in $files) {
    $a = (Get-FileHash (Join-Path $source $file) -Algorithm SHA256).Hash
    $b = (Get-FileHash (Join-Path $dest $file) -Algorithm SHA256).Hash
    if ($a -ne $b) {
        Write-Warning "isi berbeda setelah salin: $file"
        $mismatch++
    }
}

Write-Host ""
Write-Host "$($files.Count) berkas disalin, $($files.Count - $mismatch) identik."
if ($mismatch -gt 0) { exit 1 }

Write-Host "Panggil dengan namanya di chat, atau biarkan agent memilihnya saat tugasnya menyentuh desain dan copy."
