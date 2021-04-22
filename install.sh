 #!/bin/bash

 ## github follow @astraroot ##

echo "Instalador para Linux baseados no kernel 4.15 até o 5.6x, kernel inferior a 4.15 não vai funcionar nem superior a 5.6."

sleep 3s

uname -r ;

echo "Instalando Depências do driver..............." ;

sleep 2s

echo "Por favor der permissão root para continuar a intalação do adaptador wifi usb." ;

## Dependencias do drivers
sudo apt-get install build-essential git dkms linux-headers-$(uname -r) -y ;

sleep 3s

sudo dkms add ./rtl8188fu -y ;
sudo dkms build rtl8188fu/1.0 -y ;
sudo dkms install rtl8188fu/1.0 -y ;

echo "Copiando pasta do adapatdor para /lib/firmaware.........." ;

sleep 5s

sudo cp ./rtl8188fu/firmware/rtl8188fufw.bin /lib/firmware/rtlwifi/ -y;

sleep 10s

echo "O Sistema será reiniciado em breve......" ;

sleep 15s

reboot