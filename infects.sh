#!/bin/bash
# A tool by nitro from www.noob-hackers.com
# Be a unique person not copy cat
# Colours
#-----------------
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
orange='\033[40m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
Gris='\033[0;37m'
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Escape}[36m";
Reset="${Escape}[0m";
#-----------------
# scripting starts
clear
echo -e "Verficiando dependencias ❤ ❤ ❤ ❤ "| lolcat -a -d 30
echo -e "Espere por favor ❤ ❤ ❤ ❤ "| lolcat -a -d 30
# Verifica si esta instaldo o lo va instalar
which lolcat > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] lolcat..............${green}[ Encontrado ]"
which lolcat > /dev/null 2>&1
sleep 6
else
echo -e $red "[ X ] lolcat  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea  instalar lolcat "
sudo pip install lolcat
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which lolcat > /dev/null 2>&1
sleep 6
fi
# Verifica si esta instaldo o lo va instalar
which ruby > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] Ruby..............${green}[ Encontrado ]" 
which ruby> /dev/null 2>&1
sleep 6
else
echo -e $red "[ X ] lolcat  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar ruby "
sudo pkg install ruby -y
echo -e  "[ ✔ ] Se Instalo correctamente ...." | lolcat -a -d 30
which ruby > /dev/null 2>&1
sleep 6
fi
# Verifica si esta instaldo o lo va instalar
which python > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] Python..............${green}[ Encontrado ]"
which python> /dev/null 2>&1
sleep 6
else
echo -e $red "[ X ] Python  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar python "
sudo pkg install python
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which python > /dev/null 2>&1
sleep 6
fi
# Verifica si esta instaldo o lo va instalar
which toilet > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] toilet..............${green}[ Encontrado ]"
which toilet> /dev/null 2>&1
sleep 6
else
echo -e $red "[ X ] toilet  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar toilet "
sudo pkg install toilet
echo -e "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which toilet > /dev/null 2>&1
sleep 6
fi
# Verifica si esta instaldo o lo va instalar
which cowsay > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] cowsay..............${green}[ Encontrado ]"
which cowsay > /dev/null 2>&1
sleep 6
else
echo -e $red "[ X ] cowsay -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar cowsay "
sudo pkg install cowsay
echo -e  "[ ✔ ] Se Instalo correctamente ...." | lolcat -a -d 30
which cowsay > /dev/null 2>&1
sleep 6
fi
echo -e "PROGRAMAS REQUERIDOS SATISFECHO"| lolcat -a -d 30
sleep 13
clear
#Pregunta si o no
echo -n "Desea saber su Ping (y/n)? "
read answer
clear
#Buscador del ip local
printf "Tu IP:"
 ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'
### puedes verificar el nombre de la terminal con
### printf "Nombre de la terminal:"
#hostname -s | cut -d' ' -f1
# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
echo -n "Ingrese la IP: "
read my_var
    ping -c10 -i3 $my_var
    sleep 8
    clear
    source infects1.sh
else
clear
# check internet 
function checkinternet() 
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Conectando al Internet:${Red}CONEXIÓN FALLIDA"
    echo 
    echo -e $red "Este script necesita una conexión a Internet Activa"
    echo
    echo '
                       --------------------------------
		      |  SORRY   BAY  CONEXION FALLIDA |     
		       -------------------------------- 
 '| lolcat -a -d 20
    echo && sleep 5
    exit
  else
    echo -e $yellow " Conectando al Internet: ${LighGreenF}CONECTADO"
  fi
}
checkinternet
sleep 2
# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detectado, Saliendo... "
echo -e $red"[*] Deteniendo el Servicio... "
sleep 1
echo '
                       ------------------------------------
		      | NOS DA PENA QUE NOS DEJE CUIDATE   |     
		       ------------------------------------ 
 '| lolcat -a -d 20
echo && sleep 5
exit
}
echo '
                
                         __________
                      .~#########%%;~.
                     /############%%;`\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X
X  \...X     @#%,.@   ----------------    @ @ 00 0 xxxxxxxxx
 X# \.X        @#%,.@   Infect v3.0      @#%,.@        
                @#%,.@              @#%,.@          
                  @#%,.@          @#%,.@            
                     @#%,.@      @#%,.@             
                       @#%.,@  @#%,.@              
               Creador Original Noobhackers
                 Modificado por Luigui
'| lolcat -a -d 20
echo " " 

echo -e "$red                      ▶ Coded by$grn N17RO$red ◀$rset"
echo -e "$red                 ⫸$ylo    Noob Hackers$red ⫷$rset"
echo 
# Functions
echo -e "$red                   [Infect them with fun]$rset"
echo " "
echo " "
echo -e "$grn              ＞＞＞＞>>>＞$ylo [Options]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [1️⃣] Infect now"
echo -e "$red                        ➡$cyan [2️⃣] Save now"
echo -e "$red                        ➡️$cyan [3️⃣] Update script"
echo -e "$red                        ➡$cyan [4️⃣] Exit"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜<$rset"
echo " "
echo -e "$cyan                   [[[$ylo Select any option$cyan]]]$rset"
echo " "
read n
case "$n" in
1)echo " "
echo " "
echo " "
echo -e "$red               You are going to$grn Infect$red Now$rset"
echo " "
echo -e "$grn                  Press$ylo ENTER$red to continue$rset"
echo " "
read hulke
cd $HOME/Infect/lol
echo " "
echo -e "$ylo     To terminate the process click$red 't'$ylo or to continue click on$grn ENTER$rset" 
read choice
if [ $choice = 't' ] ; then
echo -e "$red                    Are you sure? Press$grn ENTER$red to exit$rset"
read hulkee
cd $HOME/Infect/
bash infect.sh
else
bash sysup.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan            click$grn ENTER$cyan to go back into infect  menu$rset"
echo " "
read punch
fi
cd $HOME/Infect/
bash infect.sh ;;
2)echo " "
echo " "
echo " "
echo -e "$red                You are going to$red Save victim$rset "
echo " "
echo -e "$grn                  Press$ylo ENTER$grn to continue$rset"
echo " "
read nitro
cd $HOME/Infect/lol
echo " "
echo -e "$ylo         To terminate the process click$red 't' $ylo or to continue click on$grn ENTER$rset"
read choice
if [ $choice = 't' ] ; then
echo -e "$red                   Are you sure? Press$grn ENTER$red to exit$rset"
read nitroo
cd $HOME/Infect
bash infect.sh
else
bash save.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan             click$grn ENTER$cyan to go back into infect  menu$rset"
echo " "
read punch
fi
cd $HOME/Infect
bash infect.sh ;;
3)echo " "
echo " "
echo " "
echo -e "$red             You are going to$grn Update the$red Script$rset "
echo " "
echo -e "$grn                 Press$ylo ENTER$grn to continue$rset"
echo " "
read mon
cd $HOME/Infect/lol
echo " "
echo -e "$ylo         To terminate the process click$red 't' $ylo or to continue click on$grn ENTER$rset"
read choice
if [ $choice = 't' ] ; then
echo -e "$red                 Are you sure? Press$grn ENTER$red to exit$rset"
read monn
cd $HOME/Infect
bash infect.sh
else
bash update.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan        click$grn ENTER$cyan to go back into infect  menu$rset"
echo " "
read punch
fi
cd $HOME/Infect
bash infect.sh ;;
4)
sleep 2.0
clear
echo " "
echo -e "$grn
     ____  _  _  ____    ____  _  _  ___
    (  _ \( \/ )( ___)  (  _ \( \/ )( ___)
     ) _ < \  /  )__)    ) _ < \  /  )__)
    (____/ (__) (____)  (____/ (__) (____)...$cyan have a awesome day$rset"

echo " "
echo " "
esac
fi
