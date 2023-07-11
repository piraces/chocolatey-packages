﻿$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.54/flyctl_0.1.54_Windows_x86_64.zip'
$checksum64  = '5390e6e12faa86f5a6f70d007a9a8347864d06576d66f984db7ab99b02ad51bc'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
