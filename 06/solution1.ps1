$input = Get-Content -Path "input.txt"

[int[]]$array = @()

for ($i = 0; $i -lt $input.Length; $i++){
    if ($input[$i] -ne $null -and $input[$i] -ne ",") {
        $array += $([int]$input[$i]-48)
    }  
}

for ($j = 0; $j -lt 80; $j++){    
    for ($i = 0; $i -lt $array.Length; $i++){
        if ($array[$i] -eq 0){
            $array += $([int]8)
            $array[$i] = 6
        } else {
            $array[$i] = $([int]$array[$i]-1)
        }
    }
    Write-Host $j,$array.Length
}
