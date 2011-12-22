#!/bin/bash


# get the dirname
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


# Zuerst wird überprueft ob die nötigen Datein vorhanden sind
if [ ! -f BKampfBot.jar ]
then
	echo "BKampfBot.jar wurde nicht gefunden"
	exit 1
fi

if [ ! -f config.json ]
then
	echo "config.json wurde nicht gefunden"
	exit 1
fi

auswahl() {

echo ""
echo "Bitte waehlen Sie eine Aktion:"
echo " 1) Normaler Start mit Plaenen"
echo " 2) los-Modus (Rubbellos)"
echo " 3) quiz-Modus (Tagesquiz)"
echo " 4) glueck-Modus (Gluecksrad)"
echo " 5) wein-Modus (Weinfaesser)"
echo " 6) spiel-Modus (Tagesspiel)"
echo " 7) lotto-Modus (Lottonummern)"
echo " 8) jagd-Modus (Woerterjagd)"
echo " 9) Hilfe"
echo " 0) Beenden"
echo ""

read -p "Nummer eingeben:" MODUS

case "$MODUS" in 
	"1")
		java -jar BKampfBot.jar
		;;
	"2")
		java -jar BKampfBot.jar los
		;;
	"3")
		java -jar BKampfBot.jar quiz
		;;
	"4")
		java -jar BKampfBot.jar glueck
		;;
	"5")
		java -jar BKampfBot.jar wein
		;;
	"6")
		java -jar BKampfBot.jar spiel
		;;
	"7")
		java -jar BKampfBot.jar lotto
		;;
	"8")
		java -jar BKampfBot.jar jagd
		;;
	"9")
		java -jar BKampfBot.jar --help
		;;
	"0")
		exit 0
		;;
	*)
		auswahl
		;;
esac
auswahl
}

auswahl


