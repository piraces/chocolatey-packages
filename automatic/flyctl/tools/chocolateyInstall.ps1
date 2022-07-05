﻿$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.348/flyctl_0.0.348_Windows_x86_64.zip'
$checksum64  = '58339f7e2ead36553e14ad04ff64b0f47e5374ca053125e8ceb960e6e59b01fb'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
