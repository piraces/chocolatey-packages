$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.18.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.18.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '64da246543ae4bdd6c3e164c953d01c2c0c3222f7274f78eff3fd483daddb41e'
$checksum64  = '4b67f9a0159dc4f6a19fdea46eda506d58efe9e9d01aebc6ee39c9e9c14f9715'

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

