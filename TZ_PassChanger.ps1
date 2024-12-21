$button1_Click = {
Import-Module "C:\PS\ADPoSh\Microsoft.ActiveDirectory.Management.dll"
Add-Type -AssemblyName PresentationFramework


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
function Compare-SecureString {
  param(
    [Security.SecureString]
    $secureString1,
    [Security.SecureString]
    $secureString2
  )
  try {
    $bstr1 = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureString1)
    $bstr2 = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureString2)
    $length1 = [Runtime.InteropServices.Marshal]::ReadInt32($bstr1,-4)
    $length2 = [Runtime.InteropServices.Marshal]::ReadInt32($bstr2,-4)
    if ( $length1 -ne $length2 ) {
      return $false
    }
    for ( $i = 0; $i -lt $length1; ++$i ) {
      $b1 = [Runtime.InteropServices.Marshal]::ReadByte($bstr1,$i)
      $b2 = [Runtime.InteropServices.Marshal]::ReadByte($bstr2,$i)
      if ( $b1 -ne $b2 ) {
        return $false
      }
    }
    return $true
  }
  finally {
    if ( $bstr1 -ne [IntPtr]::Zero ) {
      [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($bstr1)
    }
    if ( $bstr2 -ne [IntPtr]::Zero ) {
      [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($bstr2)
    }
  }
}
$1 = ConvertTo-SecureString -AsPlainText "Cisco123$" -Force -Verbose
$2 = ConvertTo-SecureString -AsPlainText "Cisco123$" -Force -Verbose

If (Compare-SecureString $1 $2){
#Set-ADAccountPassword $env:username -NewPassword $1 -Reset -PassThru -Credential $MySecureCreds | Set-ADUser -ChangePasswordAtLogon $false
[System.Windows.MessageBox]::Show('ѕароль изменЄн')
}
else { [System.Windows.MessageBox]::Show('¬ведЄнные пароли не совпадают')}
}
}

$label2_Click = {

}

$label1_Click_1 = {

}

$label1_Click = {

}

. (Join-Path $PSScriptRoot 'TZ_PassChanger.designer.ps1')

$TZ_PassChanger.ShowDialog()