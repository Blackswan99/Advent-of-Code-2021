$payload = Get-Content -Path "input.txt"

for ($i = 1; $i -lt $($payload.Count + 1); $i++){
    for ($j = 1; $j -lt $($payload[$i].Length+1); $j++){
        
        Write-Host "$($payload[$i][$j])" -NoNewline
    }
    Write-Host
}