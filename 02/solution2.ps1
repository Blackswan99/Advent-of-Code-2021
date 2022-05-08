$payload = Get-Content -Path "input.txt"
$horizontal = 0
$vertical = 0
$aim = 0
for ($i = 0; $i -lt ($payload.count); $i++){
    switch ($payload[$i].Split(" ")[0]){
        "forward" { 
            $horizontal += [int]$($payload[$i].Split(" ")[1]) 
            $vertical += $aim * [int]$($payload[$i].Split(" ")[1])
        }
        "down" { $aim += [int]$($payload[$i].Split(" ")[1]) }
        "up"{ $aim -= [int]$($payload[$i].Split(" ")[1]) }
    }
}
Write-Host "Final position: h=$horizontal v=$vertical ==> Multiply: $($horizontal*$vertical)" 