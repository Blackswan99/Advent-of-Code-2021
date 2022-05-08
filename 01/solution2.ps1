$greater = 1
$payload = get-content -path "C:\Users\Zwette\Documents\GitHub\Advent-of-Code-2021\01\input.txt"
for ($i = 2; $i -lt ($payload.count); $i++){
    $mean1 = $payload[$i-1]+$payload[$i]+$payload[$i+1]
    $mean2 = $payload[$i]+$payload[$i+1]+$payload[$i+2]
    if ($mean2 -gt $mean1){
        $greater++
    }
    Write-Host "Mean1: $($payload[$i-1]) $($payload[$i]) $($payload[$i+1])"
    Write-Host "Mean2: $($payload[$i]) $($payload[$i+1]) $($payload[$i+2])`n"
}
Write-Host $greater