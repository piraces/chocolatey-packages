$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.6.0/dagger_v0.6.0_windows_amd64.zip'
$checksum64  = 'faeaca53c9b4ab739f6ef39d842ba5be1bb6ea03c729d4beda3ce97c08536af1'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
