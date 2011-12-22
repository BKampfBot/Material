@echo off

:: Zuerst wird überprueft ob die nötigen Datein vorhanden sind
::if not exist BKampfBot.jar goto error1
::if not exist config.json goto error2

:auswahl
echo.
echo Bitte waehlen Sie eine Aktion:
echo  1) Normaler Start mit Plaenen
echo  2) los-Modus (Rubbellos)
echo  3) quiz-Modus (Tagesquiz)
echo  4) glueck-Modus (Gluecksrad)
echo  5) wein-Modus (Weinfaesser)
echo  6) spiel-Modus (Tagesspiel)
echo  7) lotto-Modus (Lottonummern)
echo  8) jagd-Modus (Woerterjagd)
echo  9) Hilfe
echo  0) Beenden
echo.

:: Es folgt die Abfrage was zu tun ist
set /p MODUS=Nummer eingeben:
if "%MODUS%" == "1" (
	java -jar BKampfBot.jar
) else if "%MODUS%" == "2" (
	java -jar BKampfBot.jar los
) else if "%MODUS%" == "3" (
	java -jar BKampfBot.jar quiz
) else if "%MODUS%" == "4" (
	java -jar BKampfBot.jar glueck
) else if "%MODUS%" == "5" (
	java -jar BKampfBot.jar wein
) else if "%MODUS%" == "6" (
	java -jar BKampfBot.jar spiel
) else if "%MODUS%" == "7" (
	java -jar BKampfBot.jar lotto
) else if "%MODUS%" == "8" (
	java -jar BKampfBot.jar jagd
) else if "%MODUS%" == "9" (
	java -jar BKampfBot.jar --help
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



:END
pause
