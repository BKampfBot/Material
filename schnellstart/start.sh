#!/bin/bash


# cd into dir

DIR=$( dirname "${BASH_SOURCE[0]}" )
cd "$DIR"
DIR=$(pwd)


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
echo " 1) Normaler Start       9) Hilfe"
echo " 2) Rubbellos           10) Proxytest"
echo " 3) Tagesquiz           11) Pins"
echo " 4) Gluecksrad          12) Beenden"
echo " 5) Weinfaesser"
echo " 6) Tagesspiel           0) Beenden"
echo " 7) Lottonummern"
echo " 8) Woerterjagd"
echo ""

read -p "Nummer eingeben: " MODUS

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
	"10")
		java -jar BKampfBot.jar testproxy
		;;
	"11")
		pins
		;;
	"12")
		exit 0
		;;
	"0")
		exit 0
		;;
	*)
		;;
esac
auswahl
}


pins() {
echo ""
echo "Bitte Pins mit Komma abgetrennt angeben. Weitere Informationen"
echo "dazu gibt es unter http://www.georf.de/bundeskampf-pins/"
echo ""

read -p "pins=" PINS

if [ "$PINS" != "" ] ; then
	java -jar BKampfBot.jar pins=$PINS
fi
}

auswahl


