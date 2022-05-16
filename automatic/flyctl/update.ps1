import-module au

$releases = 'https://github.com/superfly/flyctl/releases'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_BeforeUpdate {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL64
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases  -UseBasicParsing

    # flyctl_0.0.325_Windows_x86_64.zip
    $re  = "flyctl_.+_Windows_x86_64.zip"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '_' | select -First 1 -Skip 1
    $url64 = 'https://github.com' + $url

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none