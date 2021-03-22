$ErrorActionPreference = 'Stop'

$packageName = 'bisq'
$fileType    = 'exe'
$url64       = 'https://github.com/bisq-network/bisq/releases/download/v1.5.9/Bisq-64bit-1.5.9.exe'
$checksum64  = '505dcdafc336daff73d0397de979df2c5567d03d6a7e4f37b8922c5819eb988a'
$silentArgs  = '/VERYSILENT /NORESTART /SUPRESSMSGBOXES'
$checksumType64 = 'sha256'
$validExitCodes = @(0, 3010, 1641)

$packageArgs = @{
  packageName    = $packageName
  fileType       = $fileType
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = $checksumType64
  validExitCodes = $validExitCodes
  silentArgs     = $silentArgs
}

Install-ChocolateyPackage @packageArgs
