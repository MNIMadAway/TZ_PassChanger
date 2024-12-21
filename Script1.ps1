$Username = 'mitest\admin'
$Password = 'Cisco123$'
$pass = ConvertTo-SecureString -AsPlainText $Password -Force
$SecureString = $pass
# Users you password securly
$MySecureCreds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Username,$SecureString 

$iam = $env:USERNAME
$1 = Invoke-Command DC-001 -Credential $MySecureCreds -scriptblock{

  $user = Get-ADUser -Identity "$Using:iam" -Properties description | Select  Name, description
  return $user
  }

$result = ($1 |Select description).description

if ($result -like "*paswd*") {

#
# Script1.ps1
#
