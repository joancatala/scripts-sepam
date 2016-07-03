#!/bin/bash
#-----------------------------------------------------------------------------------------
# Copies de seguretat de l'ordinador fixe amb FreeBSD al meu Dropbox
# Iniciat 22 de juny 2016
# joan@riseup.net
# http://github.com/joancatala
#-----------------------------------------------------------------------------------------


echo "
██████╗ ██████╗ ██████╗ ██╗ █████╗ ██████╗  ██████╗ ██████╗
██╔════╝██╔═══██╗██╔══██╗██║██╔══██╗██╔══██╗██╔═══██╗██╔══██╗
██║     ██║   ██║██████╔╝██║███████║██║  ██║██║   ██║██████╔╝
██║     ██║   ██║██╔═══╝ ██║██╔══██║██║  ██║██║   ██║██╔══██╗
╚██████╗╚██████╔╝██║     ██║██║  ██║██████╔╝╚██████╔╝██║  ██║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
"

# Missatge 1
echo -e "\e[34m----------------------------------------------------------------------------"
echo -e "\e[34mIniciem l'aplicació Copiador per a pujar fitxers de configuracio a Dropbox"
echo -e "\e[34m----------------------------------------------------------------------------"

# Preparem l'entorn de la còpia
cd $HOME
NOW=$(date +"%Y%m%d")
mkdir $NOW
cd $NOW

# Missatge 2
echo -e "\e[34mAnem a copiar els fitxers"

# Copiem els fitxers que volem del nostre equip FreeBSD.
# Ací pots afegir lliurement tots els fitxers que necessites mantenir segurs al núvol Dropbox.
cp /etc/X11/xorg.conf .
cp /etc/rc.conf .
cp /boot/loader.conf .
cp /etc/sysctl.conf .

# Generem dos fitxers informatius amb totes les apliacions instal·lades a l'ordinador
# i amb versio, kernel i espai en disc:aplicacions_instalades.txt i configuracio_ordinador.txt
echo -e "######################################################################################################\nAplicacions instal·lades\n######################################################################################################" > aplicacions_instalades.txt && echo -e "  \n\n" >> configuracio_ordinador.txt && pkg info >> aplicacions_instalades.txt

echo -e "######################################################################################################\nKernel\n######################################################################################################" > configuracio_ordinador.txt && uname -a >> configuracio_ordinador.txt && echo -e "  \n\n" >> configuracio_ordinador.txt && echo -e "######################################################################################################\nVersió de FreeBSD\n######################################################################################################" >> configuracio_ordinador.txt && freebsd-version >> configuracio_ordinador.txt && echo -e "  \n \n" >> configuracio_ordinador.txt && echo -e "######################################################################################################\nEspai en disc\n######################################################################################################" >> configuracio_ordinador.txt && df -h >> configuracio_ordinador.txt && echo -e "  \n\n" >> configuracio_ordinador.txt

# Eixim i fem el tar.gz amb:
cd ..
tar cvfz $NOW.copia.tar.gz $NOW/

# Missatge 3
sleep 2
echo -e "\e[32mFitxers copiats, ara anem a procedir a pujar-los al Dropbox..."

# Finalment iniciem l'ordre de pujada al meu Dropbox
dropbox_uploader.sh upload ./$NOW.copia.tar.gz /software/backups/ordinador_fixe/

# Missatge 4
sleep 2
echo -e "\e[34mLa còpia de seguretat ja ha segut pujada a Dropbox!"

# Esborrem el directori del backup perquè ja el tenim a Dropbox
rm -rf $NOW
rm -rf $NOW.copia.tar.gz

# Esperem els cinc segons i netejem la consola
sleep 5
echo -e "\e[34mLa còpia ha finalitzat."
echo -e "\e[39m "
# Fi
