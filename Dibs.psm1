<#
.Synopsis
       Retrieves variable names from a line in a template file
.DESCRIPTION
       
.EXAMPLE
       Example
.PARAMETER Parameter
       ParameterDescription
.NOTES 
    Notes
#>
Function Read-TemplateVariable {
    [CmdletBinding()]
    [Alias()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, Position = 0)]
        [Object]$Line
    )
    Begin {
        $Captures = @()
        $Matches = $Regex.TemplateVariable.Matches($Line)
    }
    Process {
        ForEach ($Match in $Matches) {
            $Captures += $Match.Groups[1].Value
        }
    }
    End {
        $Captures
    }
}
