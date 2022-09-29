Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}
Invoke-WebRequest -Uri https://i.ibb.co/8BbpnhM/wallpaper.png -OutFile wallpaper.bmp
Set-WallPaper -value "$env:USERPROFILE\Desktop\wallpaper.bmp"