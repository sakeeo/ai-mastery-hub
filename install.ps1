<#
.SYNOPSIS
Memasang skill web-design-anti-ai ke direktori skill DeepSeek Harness.

.DESCRIPTION
Menyalin SKILL.md, README.md, LICENSE, dan seluruh isi references/ ke
direktori skill. Secara default dipasang di level user (~/.dsh/skills) sehingga
berlaku di semua project. Dengan -Project, skill dipasang di .dsh/skills milik
satu project saja.

Folder ref/ tidak pernah disalin. Folder itu berisi bahan riset lokal dan
diabaikan oleh git.

.PARAMETER Project
Pasang ke <project>/.dsh/skills alih-alih direktori user.

.PARAMETER Path
Root project tujuan saat memakai -Project. Default: direktori kerja saat ini.

.PARAMETER Name
Nama folder skill tujuan. Default: web-design-anti-ai.

.EXAMPLE
.\install.ps1

Memasang di ~/.dsh/skills/web-design-anti-ai.

.EXAMPLE
.\install.ps1 -Project -Path D:\DEV\landing-page

Memasang di D:\DEV\landing-page\.dsh\skills\web-design-anti-ai.
#>
[CmdletBinding()]
param(
    [switch]$Project,
    [string]$Path,
    [string]$Name = 'web-design-anti-ai'
)

$ErrorActionPreference = 'Stop'

$source = $PSScriptRoot
if (-not (Test-Path (Join-Path $source 'SKILL.md'))) {
    throw "SKILL.md tidak ditemukan di $source. Jalankan skrip ini dari folder repo skill."
}

if ($Project) {
    $projectRoot = if ($Path) { (Resolve-Path -LiteralPath $Path).Path } else { (Get-Location).Path }
    $dest = Join-Path $projectRoot ".dsh\skills\$Name"
    $scope = "project ($projectRoot)"
}
else {
    $dshRoot = if ($env:DSH_HOME) { $env:DSH_HOME } else { Join-Path $env:USERPROFILE '.dsh' }
    $dest = Join-Path $dshRoot "skills\$Name"
    $scope = 'user'
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
    $target = Join-Path $dest $file
    New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
    Copy-Item (Join-Path $source $file) $target -Force
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
