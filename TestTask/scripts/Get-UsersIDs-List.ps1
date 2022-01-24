$users = Get-Content -Path "..\resources\users.json" | ConvertFrom-JSON

$active_users_list = @()

foreach ($user in $users) {
    if ($user.active -eq $true) {
        $active_users_list += $user.id
    }
}

return $active_users_list