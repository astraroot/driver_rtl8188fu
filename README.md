# Realtek USB Wireless Adaptador Drivers

### Realtek USB Wireless Adaptador Drivers [rtl8188fu] [0bda:f179]

### Para Kernel 4.15.x ~ 5.6.x distros Debian, ubuntu e Mint

------------------

![Alt text](/realtek-usb-wireless-adapter.jpg?raw=true "Realtek USB Wireless Adapter")

------------------
For ARM architecture (and kernel 5.9.x support), use [this branch](https://github.com/corneal64/Realtek-USB-Wireless-Adapter-Drivers/tree/ARM-driver)
------------------



## Instalar, passo a passo

`sudo apt-get install build-essential git dkms linux-headers-$(uname -r)`

`git clone https://github.com/corneal64/Realtek-USB-Wireless-Adapter-Drivers.git`

`cd Realtek-USB-Wireless-Adapter-Drivers`

`sudo dkms add ./rtl8188fu`

`sudo dkms build rtl8188fu/1.0`

`sudo dkms install rtl8188fu/1.0`

`sudo cp ./rtl8188fu/firmware/rtl8188fufw.bin /lib/firmware/rtlwifi/`

------------------

## Desativar

`sudo mkdir -p /etc/modprobe.d/`

`sudo touch /etc/modprobe.d/rtl8188fu.conf`

`echo "options rtl8188fu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/rtl8188fu.conf`

------------------

## Remover

`sudo dkms remove rtl8188fu/1.0 --all`

`sudo rm -f /lib/firmware/rtlwifi/rtl8188fufw.bin`

`sudo rm -f /etc/modprobe.d/rtl8188fu.conf`

