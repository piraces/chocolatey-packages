$ErrorActionPreference = 'Stop'

$packageName = 'bisq'
$fileType    = 'exe'
$url64       = 'https://github.com/bisq-network/bisq/releases/download/v1.10.3/Bisq-64bit-1.10.3.exe'
$checksum64  = '20ae402ccdfd64aaa0a0223bcb75edb01baa8b21e4754161059e818aa3e0946f'
$silentArgs  = '/quiet'
$checksumType64 = 'sha256'
$validExitCodes = @(0, 3010, 1641)

$packageArgs = @{
  packageName    = $packageName
  fileType       = $fileType
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = $checksumType64
  validExitCodes = $validExitCodes
  silentArgs     = $silentArgs
}

Install-ChocolateyPackage @packageArgs
