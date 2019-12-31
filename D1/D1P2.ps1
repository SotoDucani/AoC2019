# Input contains the mass of a specific module per line
# Determine sum of fuel requirements of all modules

# Part 2 adds recursive calculations to add additional fuel to account for the fuel required for each module

$Input = Get-Content -Path .\Input_D1P1.txt

$SumRequiredFuel = 0

foreach ($ModuleMass in $Input) {
    $ModuleFuel = $null
    while (($ModuleFuel -gt 0) -or ($ModuleFuel -eq $null)) {
        $ModuleFuel = ([math]::Floor($ModuleMass/3))-2
        if ($ModuleFuel -gt 0) {
            $SumRequiredFuel += $ModuleFuel
            $ModuleMass = $ModuleFuel
        }
    }
}

$SumRequiredFuel

#Answer: 5094261
