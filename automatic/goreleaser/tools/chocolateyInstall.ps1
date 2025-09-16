$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '97c6410cdf3e3f3980fa4bad0d17151dd5d610078c3b9e04180dc07d6bd36ed0'
$checksum64  = '40fa2213dcb3f1a3f626494f19deecbee943d6c4c28fb6bfe0e51806a655ac61'

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

