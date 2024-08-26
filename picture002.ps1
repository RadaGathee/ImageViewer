# Load the necessary assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$imagePath = "D:\pshellScripts\riceCook2.png"
$iconPath = "D:\pshellScripts\pexels-pixabay-37337.ico" # its for that icon that comes before Good Morning, can remove it

[System.Windows.Forms.Application]::EnableVisualStyles()
[System.Windows.Forms.Application]::SetCompatibleTextRenderingDefault($true)

# Create the form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Good Morning!"
$form.Size = New-Object System.Drawing.Size(800, 600) 
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

# Set the icon
$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath) #for that icon I mentioned above

# Create the PictureBox
$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Image = [System.Drawing.Image]::FromFile($imagePath)
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$pictureBox.Dock = [System.Windows.Forms.DockStyle]::Fill

$form.Controls.Add($pictureBox)

[System.Windows.Forms.Application]::Run($form)
