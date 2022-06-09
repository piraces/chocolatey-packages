$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.18/dagger_v0.2.18_windows_amd64.zip'
$checksum64  = 'ee46baa2c16d4958e83f6631adb790e9279fa5bdbb7e1ede9a21f1d8e4feabe6'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
