$input = Get-Content -Path "test_input.txt"

[int[]]$array = @()
$bucket = [System.Collections.ArrayList]@()

for ($i = 0; $i -lt $input.Length; $i++){
    if ($input[$i] -ne $null -and $input[$i] -ne ",") {
        $bucket += $([int]$input[$i]-48)
    }  
}

$totaldur = Measure-Command {
    Write-Host "Initial",$bucket.Count
    for ($j = 1; $j -lt 81; $j++){
        $duration = Measure-Command {
            for ($i = 0; $i -lt $bucket.Count; $i++){
                if ($bucket[$i] -eq 0){
                    $bucket += 9
                    $bucket[$i] = 6
                } else {
                    $bucket[$i] = [int]$bucket[$i]-1
                }
            }
        }
        Write-Host $j,$bucket.Count,$([int]$duration.TotalSeconds)
    }
}
$totaldur.TotalSeconds
