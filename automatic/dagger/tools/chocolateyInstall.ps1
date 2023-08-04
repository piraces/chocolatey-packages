$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.8.1/dagger_v0.8.1_windows_amd64.zip'
$checksum64  = 'de301d6e4290510efd910d664b6c26428e5102e06057b773b0b289430dc06c38'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
