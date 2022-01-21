# start of script

# Set-ExecutionPolicy RemoteSigned

#function defined in script

function Get-Power([int]$x, [int]$y)
{
    if ($y -gt 0) {
        return $x * (Get-Power $x (--$y)) 
    }

    else { return 1 }
}

function Get-PSVersion{
    $PSVersionTable.PSVersion
}

function Get-MrParameterCount {
    param (
        [string[]]$ParameterName
    )

    foreach ($Parameter in $ParameterName) {
        $Results = Get-Command -ParameterName $Parameter -ErrorAction SilentlyContinue

        [pscustomobject]@{
            ParameterName = $Parameter
            NumberOfCmdlets = $Results.Count
        }
    }
}

$x = 2; $y = 3
Get-Power $x $y
Get-PSVersion
Get-MrParameterCount -ParameterName ComputerName, Computer, ServerName, Host, Machine

# end of script