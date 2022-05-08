$payload = get-content -path "C:\Users\Zwette\Documents\GitHub\Advent-of-Code-2021\02\input.txt"
$horizontal = 0
$vertical = 0
for ($i = 0; $i -lt ($payload.count); $i++){
    switch ($payload[$i].Split(" ")[0]){
        "forward" { $horizontal += [int]$($payload[$i].Split(" ")[1]) }
        "down" { $vertical += [int]$($payload[$i].Split(" ")[1]) }
        "up"{ $vertical -= [int]$($payload[$i].Split(" ")[1]) }
    }
}
Write-Host "Final position: h=$horizontal v=$vertical ==> Multiply: $($horizontal*$vertical)" 