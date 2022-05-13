$input = Get-Content -Path "C:\Users\adm-dejhsc0k\Documents\WindowsPowerShell\Scripts\test_input.txt"

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
            #Write-Host "$j : " -NoNewline
            #foreach ($num in $bucket) { Write-Host "$num " -NoNewline }
            #Write-Host
        }
        Write-Host $j,$bucket.Count,$([int]$duration.TotalSeconds)
    }
}
$totaldur.TotalSeconds

# 383160 wrong, too high, took 100 minutes
# 336984 wrong, too low, took 80 minutes
