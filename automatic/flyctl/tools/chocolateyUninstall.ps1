$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.3.30/flyctl_0.3.30_Windows_x86_64.zip'
$fileName = Split-Path -Path $url64 -Leaf

Uninstall-ChocolateyZipPackage $packageName $fileName
Write-Output "Using Uninstall-ChocolateyPath-Custom function";

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$modulePath = Join-Path "${toolsDir}" 'Uninstall-ChocolateyPath-Custom.ps1'
Import-Module "${modulePath}"

Uninstall-ChocolateyPath-Custom "$(Split-Path $BinDir)"
