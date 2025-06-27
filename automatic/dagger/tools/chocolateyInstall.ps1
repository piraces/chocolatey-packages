$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.12/dagger_v0.18.12_windows_amd64.zip'
$checksum64  = 'e8cc0df3fef14dfa5269e5c99ff69564ba8cffd04feccc962c20c40b194c5f63'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
