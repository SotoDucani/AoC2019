# Input contains the mass of a specific module per line
# Determine sum of fuel requirements of all modules

$Input = Get-Content -Path .\Input_D1P1.txt

$SumRequiredFuel = 0

foreach ($ModuleMass in $Input) {
    $ModuleFuel = ([math]::Floor($ModuleMass/3))-2
    $SumRequiredFuel += $ModuleFuel
}

$SumRequiredFuel

#Answer: 3398090
