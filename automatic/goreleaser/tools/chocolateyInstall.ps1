$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.6/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.6/goreleaser_Windows_x86_64.zip'
$checksum32  = 'dd2801cfcfcac0085852306a48351cd328c7dd4b23bf324cb21340cfed968803'
$checksum64  = '9ae8f7423219ca729ab1c146c14d5b8d021fec4d9635cb2ecf9d58b8cf289787'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs

