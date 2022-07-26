﻿$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.361-pre-2/flyctl_0.0.361-pre-2_Windows_x86_64.zip'
$checksum64  = '22f159e71bcc2dceacef11550a238ccbe0d65c16a412eab7bfc77c7f9355b718'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
