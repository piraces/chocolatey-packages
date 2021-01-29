Install-ChocolateyZipPackage -PackageName 'duf' `
 -Url 'https://github.com/muesli/duf/releases/download/v0.5.0/duf_0.5.0_Windows_x86_64.zip' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"