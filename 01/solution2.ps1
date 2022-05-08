$greater = 1
$payload = get-content -path "C:\Users\Zwette\Documents\GitHub\Advent-of-Code-2021\01\input.txt"
for ($i = 2; $i -lt ($payload.count-2); $i++){
    $mean1 = ([int]$payload[$i-1]+[int]$payload[$i]+[int]$payload[$i+1])/3
    $mean2 = ([int]$payload[$i]+[int]$payload[$i+1]+[int]$payload[$i+2])/3
    if ($mean2 -gt $mean1){
        $greater++
    }
}
Write-Host $greater