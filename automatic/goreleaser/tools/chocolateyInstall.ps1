$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.17.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.17.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '996267f834ad9baae9a277abc6620dd246ad36f1407c2866526401b74e369c19'
$checksum64  = '427f2928d798f9affa5ddd2412e354f90ecf9e2ba541b3e0767570eb1121482b'

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

