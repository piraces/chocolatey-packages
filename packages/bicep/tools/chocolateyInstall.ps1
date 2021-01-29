$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'bicep' -FileFullPath "$toolsDir\bicep.exe" -Url 'https://github.com/Azure/bicep/releases/download/v0.2.328/bicep-win-x64.exe'
Install-BinFile -Name 'bicep' -Path "$toolsDir\bicep.exe"
