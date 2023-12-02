import-module au

$name = "dagger-cue"
$base = "https://dl.dagger.io"

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
    $version = Invoke-RestMethod 'http://releases.dagger.io/dagger-cue/latest_version' -Method 'GET' -Body $body
    # $version = 0.2.232

    $version = $version -replace '[""]'
    $version = $version -replace '\n'
    $fileName = $name + "_v" + $version + "_windows_amd64"
    # $fileName = dagger-cue_v0.2.232_windows_amd64

    $url64 = $base + "/" + $name + "/releases/" + $version + "/" + $fileName + ".zip"

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none