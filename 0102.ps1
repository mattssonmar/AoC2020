CLS
$InputFile = "C:\Users\nommat\OneDrive - Sweco AB\_Skript - Powershell\AoC2020\01\01.01 Input.txt"
$Input = Get-content -Path $InputFile

For($i=0; $i -lt $Input.Length; $i++){
    For($k=0; $k -lt $Input.Length; $k++){
        For($m=0; $m -lt $Input.Length; $m++){
            If((($Input[$i] -as [int]) +($Input[$k] -as [int]) +($Input[$m] -as [int])) -eq 2020){
                $KeyA=$Input[$i] -as [int]
                $KeyB=$Input[$k] -as [int]
                $KeyC=$Input[$m] -as [int]
                Write-Host "A =" $KeyA "B =" $KeyB "C =" $KeyB
                $KeyA*$KeyB*$KeyC
            }
        }
    }   
}

