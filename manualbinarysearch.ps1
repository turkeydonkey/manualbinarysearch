$minimum = 1
$maximum = 100
$number = Get-Random -Minimum 1 -Maximum 100
$guess = ""

while (($guess -as [int]) -ne $null -and ($guess -lt $minimum -or $guess -gt $maximum)) {
    Write-Output "I'm thinking of a number between $minimum and $maximum."
    $guess = (Read-Host -Prompt "Enter a number") -as [int]
}

while (($guess -as [int]) -ne $number) {
    Write-Output $number
    if ($guess -lt $number) {
        Write-Output "$guess is too low, try again"
    }
    elseif ($guess -gt $number) {
        Write-Output "$guess is too high, try again"
    }
    $guess = (Read-Host -Prompt "Enter a number") -as [int]
}

Write-Output "$guess is correct!"