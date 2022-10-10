Function Set-WallPaper($Value)
{
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
rundll32.exe user32.dll, UpdatePerUserSystemParameters
}
Invoke-WebRequest -Uri "https://images.squarespace-cdn.com/content/v1/5e269dc38e3cf11eba06a558/1585482069847-M9VWQDJPRBNKW3LRR356/image-asset.jpeg" -OutFile "$env:USERPROFILE\Desktop\wallpaper.bmp"
Set-WallPaper -value "$env:USERPROFILE\Desktop\wallpaper.bmp"
