# Создаем форму с синим экраном
Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.WindowState = "Maximized"
$form.FormBorderStyle = "None"
$form.BackColor = "Blue"
$form.TopMost = $true

# Добавляем текст ошибки
$label = New-Object System.Windows.Forms.Label
$label.Text = @"
A problem has been detected and Windows has been shut down to prevent damage to your computer.

CRITICAL_PROCESS_DIED

If this is the first time you've seen this error screen, restart your computer.

Technical information:

*** STOP: 0x000000EF (0x00000000, 0x00000000, 0x00000000, 0x00000000)



Created by - Gennadiy
"@
$label.ForeColor = "White"
$label.Font = New-Object System.Drawing.Font("Lucida Console", 14)
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(50, 50)
$form.Controls.Add($label)

# Блокируем ввод
[System.Windows.Forms.Cursor]::Hide()

# Показываем форму на 10 секунд
$form.Show()
Start-Sleep -Seconds 10

# Восстанавливаем систему
$form.Close()
[System.Windows.Forms.Cursor]::Show()