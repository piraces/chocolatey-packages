import-module au

$releases_latest = 'https://github.com/google/osv-scanner/releases/latest'
$releases = 'https://github.com/google/osv-scanner/releases/'

function global:au_SearchReplace {
    @{
        "tools\VERIFICATION.txt" = @{
            "(?i)(x64:).*"                 = "`${1} $($Latest.URL64)"
            "(?i)(checksum64:).*"          = "`${1} $($Latest.Checksum64)"
        }
     }
}

function global:au_BeforeUpdate() {
    Get-RemoteFiles -Purge -NoSuffix -FileNameBase 'osv-scanner'
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # osv-scanner_1.1.0_windows_amd64.exe
    $re_version = "/google/osv-scanner/tree/v.+"
    $re  = "osv-scanner_.+_windows_amd64.exe"

    $latest_version = $releases_page.Links | ? href -match $re_version | select -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url = 'https://github.com' + $url

    $Latest = @{ URL64 = $url; Version = $version }
    return $Latest
}

update
