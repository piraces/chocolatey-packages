$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.6.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.6.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'b5a13da8f909966947f9765bf7f43fd3afb05ce0a88442a50504784dae9cb66f'
$checksum64  = '1fb1fbe056eaffd869a05fe1e36efc7decd1886219e2a2a580dc56f16734511a'

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

