$artif_url = "http://20.211.46.202/"
$headers_artif = @{
    "Content-Type" = "application/json"
}
$health_response = Invoke-WebRequest -Uri $artif_url -Headers $headers_artif -Method Get -UseBasicParsing
$statuscode = $health_response.StatusCode
$test = $false
if ($statuscode -eq 200){
    $test = $true
    Write-Host "Artifactory is Functioning "
    exit 0
}
return $test
    Write-Host "Artifactory is NOT Functioning "
    exit 1
