import-module au

$releases_latest = 'https://github.com/pemistahl/grex/releases/latest'
$releases = 'https://github.com/pemistahl/grex/releases/'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # grex-v1.1.0-x86_64-pc-windows-msvc.zip
    $re_version = "/pemistahl/grex/tree/v.+"
    $re  = "grex-.+-x86_64-pc-windows-msvc.zip"

    $latest_version = $releases_page.Links | ? href -match $re_version | select -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url32 = 'https://github.com' + $url

    $Latest = @{ URL32 = $url32; Version = $version }
    return $Latest
}

update