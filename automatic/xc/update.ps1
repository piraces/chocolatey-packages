import-module au

$releases_latest = 'https://github.com/joerdav/xc/releases/latest'
$releases = 'https://github.com/joerdav/xc/releases/'

function global:au_SearchReplace {
    @{
        "tools\VERIFICATION.txt" = @{
            "(?i)(x86:).*"                 = "`${1} $($Latest.URL32)"
            "(?i)(x64:).*"                 = "`${1} $($Latest.URL64)"
            "(?i)(checksum32:).*"          = "`${1} $($Latest.Checksum32)"
            "(?i)(checksum64:).*"          = "`${1} $($Latest.Checksum64)"
        }
     }
}

function global:au_BeforeUpdate() {
    Get-RemoteFiles -Purge -NoSuffix -FileNameBase 'xc'
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # xc_0.0.159_windows_arm64.exe
    $re_version = "/joerdav/xc/tree/v.+"
    $re64  = "xc_.+_windows_amd64.exe"
    $re32  = "xc_.+_windows_386.exe"

    $latest_version = $releases_page.Links | Where-Object href -match $re_version | Select-Object -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url32 = $download_page.links | ? href -match $re32 | select -First 1 -expand href
    $url64 = $download_page.links | ? href -match $re64 | select -First 1 -expand href

    $version = $url64 -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")

    $url32 = 'https://github.com' + $url32
    $url64 = 'https://github.com' + $url64

    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update
