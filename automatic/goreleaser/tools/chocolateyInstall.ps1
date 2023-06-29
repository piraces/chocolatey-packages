$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '3bc07db10a95747671df910bf2ecd436c934632f8d313912a9a2753f4e9f69ef'
$checksum64  = '6f17c65a645b5cb1395da910a2252afc68edf88222ee55fa535bcc0ce1f6606a'

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

