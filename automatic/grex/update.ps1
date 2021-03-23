import-module au

$releases = 'https://github.com/pemistahl/grex/releases'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases  -UseBasicParsing

    # grex-v1.1.0-x86_64-pc-windows-msvc.zip
    $re  = "grex-.+-x86_64-pc-windows-msvc.zip"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url32 = 'https://github.com' + $url

    $Latest = @{ URL32 = $url32; Version = $version }
    return $Latest
}

update