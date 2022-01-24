function Get-Users-IDs-With-Current-Date([int[]]$users_ids) {
    $ids_date = @{}

    foreach ($id in $users_ids) {
        $ids_date.Add($id, (Get-Date))
    }
    return $ids_date
}
