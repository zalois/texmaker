Name "Texmaker"
OutFile "texmakerwin32_install.exe"

Icon "texmakerwin32\install.ico"
UninstallIcon "texmakerwin32\uninstall.ico"

LicenseText "You must agree to the GPL license before installing."
LicenseData "texmakerwin32\license.txt"


DirText "Choose directory for installing Texmaker"

InstallDir "$PROGRAMFILES\Texmaker"

Section "Install"
  SetOutPath $INSTDIR
  File "texmakerwin32\AUTHORS"
  File "texmakerwin32\CHANGELOG.txt"
  File "texmakerwin32\COPYING"
  File "texmakerwin32\doc10.png"
  File "texmakerwin32\doc11.png"
  File "texmakerwin32\doc12.png"
  File "texmakerwin32\doc13.png"
  File "texmakerwin32\doc14.png"
  File "texmakerwin32\doc15.png"
  File "texmakerwin32\doc16.png"
  File "texmakerwin32\doc17.png"
  File "texmakerwin32\doc18.png"
  File "texmakerwin32\doc19.png"
  File "texmakerwin32\doc20.png"
  File "texmakerwin32\doc1.png"
  File "texmakerwin32\doc2.png"
  File "texmakerwin32\doc3.png"
  File "texmakerwin32\doc4.png"
  File "texmakerwin32\doc5.png"
  File "texmakerwin32\doc6.png"
  File "texmakerwin32\doc7.png"
  File "texmakerwin32\doc8.png"
  File "texmakerwin32\doc9.png"
  File "texmakerwin32\blank.png"
  File "texmakerwin32\next_d.gif"
  File "texmakerwin32\next.gif"
  File "texmakerwin32\prev_d.gif"
  File "texmakerwin32\prev.gif"
  File "texmakerwin32\psheader.txt"
  File "texmakerwin32\style.css"
  File "texmakerwin32\up_d.gif"
  File "texmakerwin32\up.gif"
  File "texmakerwin32\latexhelp.html"
  File "texmakerwin32\mingwm10.dll"
  File "texmakerwin32\QtCore4.dll"
  File "texmakerwin32\QtGui4.dll"
  File "texmakerwin32\texmaker.exe"
  File "texmakerwin32\texmaker_fr.qm"
  File "texmakerwin32\texmaker.ico"
  File "texmakerwin32\usermanual_en.html"
  File "texmakerwin32\usermanual_fr.html"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Texmaker" "DisplayName" "Texmaker"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Texmaker" "UninstallString" "$INSTDIR\uninstall.exe"
  WriteUninstaller "uninstall.exe"
SectionEnd

Section "Shortcuts"
  SetOutPath "$SMPROGRAMS\Texmaker"
  CreateShortCut "$SMPROGRAMS\Texmaker\Texmaker.lnk""$INSTDIR\texmaker.exe"
  SetOutPath "$DESKTOP"
  CreateShortCut "$DESKTOP\Texmaker.lnk""$INSTDIR\texmaker.exe"
SectionEnd

UninstallText "This will uninstall Texmaker from your system"

Section "Uninstall"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Texmaker"
  Delete "$SMPROGRAMS\Texmaker\Texmaker.lnk"
  RmDir "$SMPROGRAMS\Texmaker"
  Delete "$DESKTOP\Texmaker.lnk"
  Delete "$INSTDIR\AUTHORS"
  Delete "$INSTDIR\CHANGELOG.txt"
  Delete "$INSTDIR\COPYING"
  Delete "$INSTDIR\doc10.png"
  Delete "$INSTDIR\doc11.png"
  Delete "$INSTDIR\doc12.png"
  Delete "$INSTDIR\doc13.png"
  Delete "$INSTDIR\doc14.png"
  Delete "$INSTDIR\doc15.png"
  Delete "$INSTDIR\doc16.png"
  Delete "$INSTDIR\doc17.png"
  Delete "$INSTDIR\doc18.png"
  Delete "$INSTDIR\doc19.png"
  Delete "$INSTDIR\doc20.png"
  Delete "$INSTDIR\doc1.png"
  Delete "$INSTDIR\doc2.png"
  Delete "$INSTDIR\doc3.png"
  Delete "$INSTDIR\doc4.png"
  Delete "$INSTDIR\doc5.png"
  Delete "$INSTDIR\doc6.png"
  Delete "$INSTDIR\doc7.png"
  Delete "$INSTDIR\doc8.png"
  Delete "$INSTDIR\doc9.png"
  Delete "$INSTDIR\blank.png"
  Delete "$INSTDIR\next_d.gif"
  Delete "$INSTDIR\next.gif"
  Delete "$INSTDIR\prev_d.gif"
  Delete "$INSTDIR\prev.gif"
  Delete "$INSTDIR\psheader.txt"
  Delete "$INSTDIR\style.css"
  Delete "$INSTDIR\up_d.gif"
  Delete "$INSTDIR\up.gif"
  Delete "$INSTDIR\latexhelp.html"
  Delete "$INSTDIR\mingwm10.dll"
  Delete "$INSTDIR\QtCore4.dll"
  Delete "$INSTDIR\QtGui4.dll"
  Delete "$INSTDIR\texmaker.exe"
  Delete "$INSTDIR\texmaker_fr.qm"
  Delete "$INSTDIR\texmaker.ico"
  Delete "$INSTDIR\usermanual_en.html"
  Delete "$INSTDIR\usermanual_fr.html"
  Delete "$INSTDIR\uninstall.exe"
  RmDir "$INSTDIR"
SectionEnd
