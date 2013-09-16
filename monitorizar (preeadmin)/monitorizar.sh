###################################################################################
# V 0.4 monitorizar (Red Hat Linux)                                               #
# Server: preeadmin.dipcas.es IP: 195.57.195.23                                   #
#                                                                                 #
# "monitorizar" es un xicotet shell script que mostra un menu per administrar     #
# i monitoritzar basicament les aplicacions i serveis necessaris d'aquesta        #
# maquina.                                                                        #
#                                                                                 #
###################################################################################

clear;
echo "***************************************************************************";
echo "*      MONITORITZACIO DE SERVEIS I LOGS DE PREEADMIN.DIPCAS.ES            *";
echo "***************************************************************************";
echo "";
echo "Tria una opcio:";
echo "------------------------------";
echo "";
echo "A - Procesos Tomcat Guadaltel (eco/portafirmas)";
echo "      A1 - Aturar Tomcat Guadaltel";
echo "      A2 - Iniciar Tomcat Guadaltel";
echo ""
echo "B - Procesos Tomcat Everis (OpenCMS i GSE)";
echo "      B1 - Aturar Tomcat Everis";
echo "      B2 - Iniciar Tomcat Everis";
echo ""
echo "C - Procesos Tomcat Novasoft (SIPAC i SITAE)";
echo "      C1 - Aturar Tomcat Novasoft";
echo "      C2 - Iniciar Tomcat Novasoft";
echo ""
echo "D - Procesos Jboss Everis (CVRegistro)";
echo "      D1 - Aturar Jboss Everis";
echo "      D2 - Iniciar Jboss Everis";
echo ""
echo "E - Reiniciar Apache de la maquina";
echo "F - Connectivitat amb ORACLE";
echo "G - Reiniciar la maquina!!!";
echo "H - Eixir";
echo;echo;
echo -n "Escriu la teua opcio: ";
read OPCIO

 case $OPCIO in
   a|A)
        export GREP_OPTIONS='--color=auto' GREP_COLOR='104;8'
        if ps -ef | grep '/usr/local/apache-tomcat'; then echo ""; fi
        echo ""
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;
   a1|A1)
        /etc/init.d/tomcatTrewa stop &
        sleep 2
        echo "El Tomcat de Trewa (eco/portafirmas) esta aturant-se"
        echo -n "Per favor espera uns 30 segons aproximadament..."
	echo "Pulsa ENTER per a tornar"		
        read
        monitorizar;;	
   a2|A2)
        /etc/init.d/tomcatTrewa start &
        sleep 2
        echo "El Tomcat de Trewa (eco/portafirmas) esta arrancant"
        echo -n "Per favor espera uns 30 segons aproximadament..."
		echo "Pulsa ENTER per a tornar"		
        read
        monitorizar;;	
   b|B)
        export GREP_OPTIONS='--color=auto' GREP_COLOR='104;8'
        if ps -ef | grep '/opt/xaloc/servidores/apache-tomcat-5.5.27'; then echo ""; fi
        echo ""
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;
   b1|B1)
        /opt/xaloc/servidores/apache-tomcat-5.5.27/bin/shutdown.sh > /dev/null &
        echo "El Tomcat de Everis esta aturant-se."
	echo -n "Per favor espera uns 30 segons aproximadament..."
	echo "Pulsa ENTER per a tornar"		
        read
        monitorizar;;
   b2|B2)
        /opt/xaloc/servidores/apache-tomcat-5.5.27/bin/startup.sh > /dev/null &
        echo "El Tomcat de Everis esta arrancant"
	echo -n "Per favor espera uns 30 segons aproximadament..."
	echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;		
   c|C)
        export GREP_OPTIONS='--color=auto' GREP_COLOR='104;8'
        if ps -ef | grep 'sipac-apache'; then echo ""; fi
        echo ""
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;
   c1|C1)
        sh /opt/xaloc/servidores/sipac-apache-tomcat-5.5.27/parada.sh &
        echo "El Tomcat de Novasoft esta aturant-se"
	echo -n "Per favor espera uns 30 segons aproximadament..."
	echo "Pulsa ENTER per a tornar"		
        read
        monitorizar;;
   c2|C2)
        sh /opt/xaloc/servidores/sipac-apache-tomcat-5.5.27/arranque.sh &
        echo "El Tomcat de Novasoft esta arrancant"
	echo -n "Per favor espera uns 30 segons aproximadament..."
	echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;	
    d|D)		
	export GREP_OPTIONS='--color=auto' GREP_COLOR='104;8'
        if ps -ef | grep 'jboss'; then echo ""; fi
        echo ""
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;
   d1|D1)
        sh /opt/xaloc/servidores/jboss-4.0.2/bin/shutdown.sh stop > /dev/null &
        echo "El Jboss de Everis esta aturant-se"
        echo -n "Per favor espera uns 30 segons aproximadament..."
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;
   d2|D2)
        sh /opt/xaloc/servidores/jboss-4.0.2/bin/run.sh > /dev/null &
        echo "El Jboss de Everis esta arrancant"
        echo -n "Per favor espera uns 30 segons aproximadament..."
        echo "Pulsa ENTER per a tornar"
        read
        monitorizar;;

   e|E)
        echo "Procedint a reiniciar l'Apache"
        echo ""
        /usr/local/apache2/bin/apachectl stop
        echo -n "Aturant l'Apache "
        sleep 1
        echo ""
        /usr/local/apache2/bin/apachectl start
        echo -n "Iniciant l'Apache "
        sleep 1
        echo ""
        echo "Apache reiniciat correctament!"
        sleep 3
        clear
        monitorizar;;
   f|F)
        echo "Comprovant la connectivitat amb ORACLE. Si no es mostra un missatge d'error es que funciona tot be..."
        sleep 1
        /oracle/scripts/checkbd
        sleep 1
        echo ""
        echo "Pulsa ENTER per a tornar"
        read
        clear
        monitorizar;;
   g|G)		
        echo -n "ATENCIO: En 5 segons va a reiniciar. Pulsa Ctrl+C si vols aturar aquesta ordre "
        echo ""
        sleep 1
        echo -n "5..."
        sleep 1
        echo -n "...4"
        sleep 1
        echo -n "...3"
        sleep 1
        echo -n "...2"
        sleep 1
        echo "1... va a reiniciar..."
        sleep 1
        reboot;;		
   h|H)
        clear
        echo ""
        echo ""
        echo "Has eixit correctament."
        echo ""
        echo ""
        exit;;
   *)
        echo "No has triat cap opcio valida"
        sleep 1
        monitorizar;;
 esac
