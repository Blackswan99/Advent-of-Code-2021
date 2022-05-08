$greater = 1
$payload = get-content -path "C:\Users\Zwette\Documents\GitHub\Advent-of-Code-2021\01\input.txt"
for ($i = 1; $i -lt ($payload.count + 1); $i++){
    if ($payload[$i] -gt $payload[$i-1]){
        $greater++
    }
}
Write-Host $greater