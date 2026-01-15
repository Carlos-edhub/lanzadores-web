#1. obtenemos la ubicación de nuestra carpeta con nuestros archivos.py
$currentDir = Get-Location

#2. definimos los paths o rutas de cada uno de nuestros scripts
$canvaPath = Join-Path -Path $currentDir -ChildPath ".\main.py"
$gmailPath = Join-Path -Path $currentDir -ChildPath ".\mainGmail.py"

#3. Creamos nuestro bloque de texto con las funciones
$functions = @"
#--  Accesos directos

function canva {
    python  "$canvaPath"
}

function gmail {
    python "$gmailPath"
}
#--
"@

#4. Verificamos que el perfil exista
if (!(Test-Path $PROFILE)) {
    New-Item -Type File -Path $PROFILE -Force
    <# Action to perform if the condition is true #>
}

#5. Añadimos las funciones al powerShell
Add-Content -Path $PROFILE -Value $functions

Write-Host "Configuración hecha con éxito" -ForegroundColor Blue
Write-Host "Ahora con esté fichero si lo ejecutas, usando los comandos
 'canva' o 'gmail' en cualquier terminal podrás usarlos" -ForegroundColor Yellow

