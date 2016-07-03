#!/bin/bash
#-----------------------------------------------------------------------------------------
# Copies de seguretat de l'ordinador nuvolet (Raspberry Pi) amb FreeBSD al meu Dropbox
# Iniciat 2 de juliol 2016
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

# Copiem els fitxers que volem del nostre servidor FreeBSD nuvolet.benicass.im
# Ací pots afegir lliurement tots els fitxers que necessites mantenir segurs al núvol Dropbox.
mkdir /root/$NOW/etc && cd /root/$NOW/etc && cp /etc/rc.conf . && cp /etc/sysctl.conf . && cp /usr/local/etc/php-fpm.conf  .
mkdir /root/$NOW/php && cd /root/$NOW/php && cp /usr/local/etc/php/extensions.ini . 
mkdir /root/$NOW/nginx && cd /root/$NOW/nginx && cp -rf /usr/local/etc/nginx/ . 

# Missatge 3 que avisa que els hem copiat
sleep 2
echo -e "\e[32mPerfecte, els fitxers han segut copiats. Continuem."


# Missatge 4 que avisa que copiem les webs
sleep 2
echo -e "\e[32mAra anem a copiar el directori mes gran, el /var/www"
mkdir /root/$NOW/www && cd /root/$NOW/www && cp -rf /var/www .

# Missatge 5 que confirma que s'han copiat be 
sleep 2
echo -e "\e[32mDirectori /var/www coiat satisfactoriament!!!! Continuem!!!!"



# Generem dos fitxers informatius amb totes les apliacions instal·lades a l'ordinador
# i amb versio, kernel, espai en disc:aplicacions_instalades.txt, configuracio_ordinador.txt i el Crontab
echo -e "######################################################################################################\nAplicacions instal·lades\n######################################################################################################" > /root/$NOW/aplicacions_instalades.txt && echo -e "  \n\n" >> /root/$NOW/configuracio_ordinador.txt && pkg info >> /root/$NOW/aplicacions_instalades.txt

echo -e "######################################################################################################\nKernel\n######################################################################################################" > /root/$NOW/configuracio_ordinador.txt && uname -a >> /root/$NOW/configuracio_ordinador.txt && echo -e "  \n\n" >> /root/$NOW/configuracio_ordinador.txt && echo -e "######################################################################################################\nVersió de FreeBSD\n######################################################################################################" >> /root/$NOW/configuracio_ordinador.txt && freebsd-version >> /root/$NOW/configuracio_ordinador.txt && echo -e "  \n \n" >> /root/$NOW/configuracio_ordinador.txt && echo -e "######################################################################################################\nEspai en disc\n######################################################################################################" >> /root/$NOW/configuracio_ordinador.txt && df -h >> /root/$NOW/configuracio_ordinador.txt && echo -e "  \n\n" >> /root/$NOW/configuracio_ordinador.txt && echo -e "######################################################################################################\nCrontab\n######################################################################################################" >> /root/$NOW/configuracio_ordinador.txt && crontab -l >> /root/$NOW/configuracio_ordinador.txt && echo -e "  \n\n"

# Eixim i fem el tar.gz amb:
cd ..
tar cvfz /root/$NOW.copia.tar.gz /root/$NOW/

# Missatge 6 
sleep 2
echo -e "\e[32mFitxers copiats, ara anem a procedir a pujar-los al Dropbox..."

# Finalment iniciem l'ordre de pujada al meu Dropbox
/usr/local/bin/dropbox_uploader.sh upload /root/$NOW.copia.tar.gz /software/backups/nuvolet

# Missatge 7
sleep 2
echo -e "\e[34mLa còpia de seguretat ja ha segut pujada a Dropbox!"

# Esborrem el directori del backup perquè ja el tenim a Dropbox
rm -rf /root/$NOW
rm -rf /root/$NOW.copia.tar.gz

# Missatge 8 on esperem els cinc segons i netejem la consola
sleep 5
echo -e "\e[34mLa còpia al nuvolet ha finalitzat."
echo -e "\e[39m "
# Fi
