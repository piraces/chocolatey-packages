$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '72d699714adafa26498b097db3ca53b14350a99c945d33e3cbe2f8011ced82cf'
$checksum64  = '9dee11dc151b45ce3195e7ce911320de94533bf1661544ffc46539c850e021df'

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

