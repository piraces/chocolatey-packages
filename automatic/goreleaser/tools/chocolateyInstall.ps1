$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'c257a38a42da9db7815b3bdfc0214b7d1fcabc1a5abe81d02789c39549ce79db'
$checksum64  = 'ed95a757e83ee7d10e77dc56b9a9a221a2cbce3ccdd38e701ec4b1befc7606f6'

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

