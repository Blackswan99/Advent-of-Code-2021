$greater = 1
$payload = Get-Content -Path "input.txt"
for ($i = 1; $i -lt ($payload.count + 1); $i++){
    if ($payload[$i] -gt $payload[$i-1]){
        $greater++
    }
}
Write-Host $greater