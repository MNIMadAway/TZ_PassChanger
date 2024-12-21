[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$TZ_PassChanger = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Label]$pass_change_form_textbox3 = $null
[System.Windows.Forms.Label]$pass_change_form_textbox2 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.TextBox]$newpass1 = $null
[System.Windows.Forms.TextBox]$newpass2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'TZ_PassChanger.resources.ps1')
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$newpass1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$newpass2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$pass_change_form_textbox3 = (New-Object -TypeName System.Windows.Forms.Label)
$pass_change_form_textbox2 = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$TZ_PassChanger.SuspendLayout()
#
#textBox1
#
$textBox1.AcceptsReturn = $true
$textBox1.AllowDrop = $true
$textBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Monotype Corsiva',[System.Single]12,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]331))
$textBox1.Name = [System.String]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]25))
$textBox1.TabIndex = [System.Int32]0
$textBox1.UseSystemPasswordChar = $true
#
#newpass1
#
$newpass1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Monotype Corsiva',[System.Single]12,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$newpass1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]387))
$newpass1.Name = [System.String]'newpass1'
$newpass1.PasswordChar = [System.Char]'u'
$newpass1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]25))
$newpass1.TabIndex = [System.Int32]1
$newpass1.UseSystemPasswordChar = $true
#
#newpass2
#
$newpass2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Monotype Corsiva',[System.Single]12,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$newpass2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]493))
$newpass2.Name = [System.String]'newpass2'
$newpass2.PasswordChar = [System.Char]'i'
$newpass2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]25))
$newpass2.TabIndex = [System.Int32]2
$newpass2.UseSystemPasswordChar = $true
#
#pass_change_form_textbox3
#
$pass_change_form_textbox3.AutoSize = $true
$pass_change_form_textbox3.BackColor = [System.Drawing.SystemColors]::ActiveCaption
$pass_change_form_textbox3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Bahnschrift SemiCondensed',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$pass_change_form_textbox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]415))
$pass_change_form_textbox3.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]0))
$pass_change_form_textbox3.Name = [System.String]'pass_change_form_textbox3'
$pass_change_form_textbox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]246,[System.Int32]75))
$pass_change_form_textbox3.TabIndex = [System.Int32]3
$pass_change_form_textbox3.Text = [System.String]'Введите новый пароль ещё разочек, чтобы точно не ошибиться!'
$pass_change_form_textbox3.add_Click($label1_Click)
#
#pass_change_form_textbox2
#
$pass_change_form_textbox2.AutoSize = $true
$pass_change_form_textbox2.BackColor = [System.Drawing.SystemColors]::ActiveCaption
$pass_change_form_textbox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Bahnschrift SemiCondensed',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$pass_change_form_textbox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]359))
$pass_change_form_textbox2.Name = [System.String]'pass_change_form_textbox2'
$pass_change_form_textbox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]207,[System.Int32]25))
$pass_change_form_textbox2.TabIndex = [System.Int32]4
$pass_change_form_textbox2.Text = [System.String]'Введите новый пароль!'
$pass_change_form_textbox2.add_Click($label1_Click_1)
#
#label1
#
$label1.AutoSize = $true
$label1.BackColor = [System.Drawing.SystemColors]::ActiveCaption
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Bahnschrift SemiCondensed',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]203))
$label1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]0))
$label1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]0))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]125))
$label1.TabIndex = [System.Int32]4
$label1.Text = [System.String]'Проверка удостоверения личности, чтобы мы могли убедиться, что это вы тот, за кого себя выдаёте, введите старый пароль'
$label1.add_Click($label1_Click_1)
#
#label2
#
$label2.AutoSize = $true
$label2.BackColor = [System.Drawing.SystemColors]::ActiveCaption
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Bahnschrift SemiCondensed',[System.Single]15.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]0))
$label2.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]0))
$label2.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]0))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]175))
$label2.TabIndex = [System.Int32]5
$label2.Text = [System.String]'Гражданин, попрошу вас остановиться, кажется ваш пароль требуется сменить! Будьте добры, не сопротивляйтесь и пройдите процедуру смены пароля!'
$label2.add_Click($label2_Click)
#
#button1
#
$button1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Bahnschrift SemiCondensed',[System.Single]24,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]543))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]84))
$button1.TabIndex = [System.Int32]6
$button1.Text = [System.String]'Сменить пароль'
$button1.UseVisualStyleBackColor = $true
$button1.add_Click($button1_Click)
#
#TZ_PassChanger
#
$TZ_PassChanger.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Inherit
$TZ_PassChanger.AutoSize = $true
$TZ_PassChanger.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$TZ_PassChanger.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Stretch
$TZ_PassChanger.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1213,[System.Int32]639))
$TZ_PassChanger.ControlBox = $false
$TZ_PassChanger.Controls.Add($button1)
$TZ_PassChanger.Controls.Add($label2)
$TZ_PassChanger.Controls.Add($label1)
$TZ_PassChanger.Controls.Add($pass_change_form_textbox2)
$TZ_PassChanger.Controls.Add($pass_change_form_textbox3)
$TZ_PassChanger.Controls.Add($newpass2)
$TZ_PassChanger.Controls.Add($newpass1)
$TZ_PassChanger.Controls.Add($textBox1)
$TZ_PassChanger.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Monotype Corsiva',[System.Single]8.25,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TZ_PassChanger.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$TZ_PassChanger.MinimizeBox = $false
$TZ_PassChanger.Name = [System.String]'TZ_PassChanger'
$TZ_PassChanger.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]10))
$TZ_PassChanger.ShowInTaskbar = $false
$TZ_PassChanger.WindowState = [System.Windows.Forms.FormWindowState]::Maximized
$TZ_PassChanger.ResumeLayout($false)
$TZ_PassChanger.PerformLayout()
Add-Member -InputObject $TZ_PassChanger -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name pass_change_form_textbox3 -Value $pass_change_form_textbox3 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name pass_change_form_textbox2 -Value $pass_change_form_textbox2 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name newpass1 -Value $newpass1 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name newpass2 -Value $newpass2 -MemberType NoteProperty
Add-Member -InputObject $TZ_PassChanger -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
