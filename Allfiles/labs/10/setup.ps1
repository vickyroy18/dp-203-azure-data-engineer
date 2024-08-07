$sqlDatabaseName= "simplidd3"
$synapseWorkspace= "simpliss"
$sqlUser = "sqladminuser"
$sqlPassword = "password123$"

# Create database
write-host "Creating the $sqlDatabaseName database..."
sqlcmd -S "$synapseWorkspace.sql.azuresynapse.net" -U $sqlUser -P $sqlPassword -d $sqlDatabaseName -I -i setup.sql

write-host "Script completed at $(Get-Date)"
