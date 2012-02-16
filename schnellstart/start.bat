@echo off

:: Zuerst wird überprueft ob die nötigen Datein vorhanden sind

if not exist BKampfBot.jar goto error1
if not exist config.json goto error2

:auswahl
echo.
echo Bitte waehlen Sie eine Aktion:
echo   1) Normaler Start       9) Hilfe
echo   2) Rubbellos           10) Proxytest
echo   3) Tagesquiz           11) Pins
echo   4) Gluecksrad          12) Beenden
echo   5) Weinfaesser
echo   6) Tagesspiel           0) Beenden
echo   7) Lottonummern
echo   8) Woerterjagd
echo.

:: Es folgt die Abfrage was zu tun ist
set /p MODUS=Nummer eingeben: 

if "%MODUS%" == "1" (
	chcp 65001>nul && java -jar BKampfBot.jar
) else if "%MODUS%" == "2" (
	chcp 65001>nul && java -jar BKampfBot.jar los
) else if "%MODUS%" == "3" (
	chcp 65001>nul && java -jar BKampfBot.jar quiz
) else if "%MODUS%" == "4" (
	chcp 65001>nul && java -jar BKampfBot.jar glueck
) else if "%MODUS%" == "5" (
	chcp 65001>nul && java -jar BKampfBot.jar wein
) else if "%MODUS%" == "6" (
	chcp 65001>nul && java -jar BKampfBot.jar spiel
) else if "%MODUS%" == "7" (
	chcp 65001>nul && java -jar BKampfBot.jar lotto
) else if "%MODUS%" == "8" (
	chcp 65001>nul && java -jar BKampfBot.jar jagd
) else if "%MODUS%" == "9" (
	chcp 65001>nul && java -jar BKampfBot.jar --help
) else if "%MODUS%" == "10" (
	chcp 65001>nul && java -jar BKampfBot.jar testproxy
) else if "%MODUS%" == "11" (
	goto pins
) else if "%MODUS%" == "12" (
	goto END
) else if "%MODUS%" == "0" (
	goto END
) else goto auswahl
goto auswahl


:error1
echo.
echo Die Datei BKampfBot.jar wurde nicht gefunden.
echo.
goto END


:error2
echo.
echo Die Datei config.json wurde nicht gefunden.
echo.
goto END


:pins

echo.
echo Bitte Pins mit Komma abgetrennt angeben. Weitere Informationen
echo dazu gibt es unter http://www.georf.de/bundeskampf-pins/
echo.

set /p PINS=pins=

if not "%PINS%"=="" (
	chcp 65001>nul && java -jar BKampfBot.jar pins=%PINS%
)
goto auswahl

:END
pause
