# This Windows PowerShell script outputs ALL Ascii characters from space to tilde
# (asc(32) thru asc(127) as ascii arts characters testing that all are found and
# proper displayed.
# HMO, 2026-11-17 15:02:42
Write-Host "START: Verify the ascii_XX.txt files"

Write-Host "Characters 0x20 tm 0x2F = "" !""#$%&'()*+,-./"" "
.\ascii_banner_01.ps1 " !""#$%&'()*+,-./"

Write-Host "Characters 0x30 tm 0x3F = '0123456789:;<=>?'" 
.\ascii_banner_01.ps1 "0123456789:;<=>?"

Write-Host "Characters 0x40 tm 0x4F = '@ABCDEFGHIJKLMNO'" 
.\ascii_banner_01.ps1 "@ABCDEFGHIJKLMNO"

Write-Host "Characters 0x50 tm 0x5F = 'PQRSTUVWXYZ[\]^_'" 
.\ascii_banner_01.ps1 "PQRSTUVWXYZ[\]^_"

Write-Host "Characters 0x60 tm 0x6F = 'abcdefghijklmno'" 
.\ascii_banner_01.ps1 "``abcdefghijklmno"

Write-Host "Characters 0x70 tm 0x7E = 'pqrstuvwxyz{|}~'" 
.\ascii_banner_01.ps1 "pqrstuvwxyz{|}~ü"

Write-Host "END: Verify the ascii_XX.txt files"
