scripts-sepam
=============

Ac� deixe alguns scripts que m'he creat per al SEPAM (Diputaci� de Castell�) per a controlar diferents tasques. 
Web del SEPAM http://sepam.dipcas.es
Web de la Diputaci� de Castell� http://www.dipcas.es

pwm_caigut
=============
Aquest programa em serveix per comprovar si el servidor web on tenim els Drupal de les webs municipals est� funcionant o est� caigut. Vaig fer aquest script una �poca quan el servidor experimentava moltes caigudes.

furoner_pwm
=============
Aquest programa busca una paraula que li diguem i fa una cerca global a la portada principal de totes les p�gines web municipals. Es poden veure totes les webs municipals a la p�gina principal del projecte (http://projectewebmunicipal.dipcas.es)

virtualhosts_apache
=============
Aquest script genera tots els virtualhosts al fitxer de configuraci� de l'Apache del servidor web on instal�larem les webs municipals basades en Drupal. L'script m'ajuda a automatitzar tasques i fer-ho tot r�pidament.

furoner_xarxa
=============
Aquest programa em fa un informe de C:\ i de C:\Users dels equips d'una xarxa LAN amb Windows, guarda les IPs actives de la xarxa al fitxer llistat.txt i el informe de fitxers i directoris al fitxer xarxa.txt

capturador
=============
capturador �s un script que, mitjan�ant wkhtmltoimage, em crea una captura de pantalla de totes les p�gines webs municipals automatitzat cada 5 segons. La web del Projecte Web Municipal, on tenim l'enlla� a les webs municipals de la prov�ncia de Castell� �s http://projectewebmunicipal.dipcas.es

capturador deixa les captures en format PNG a la ruta /var/www/html/captures del servidor web

monitorizar (per a eadmin i preeadmin)
=============
Aquest �s un script que ens serveix de men� principal de gesti� dels servidors de l'Administraci� Electr�nica instal�lada ac� al datacenter de la Diputaci� amb un bus que connecta amb diferents serveis d'altres servidors de la Generalitat Valenciana. Les tasques que automatitza aquest script s�n reiniciar Apache, reiniciar Tomcat, mirar processos actuals, reiniciar m�quines, etc.

PyNotificador
=============
Aquest programa envia una notificaci� a tots els ajuntaments, agafant la informaci� del responsable de la web municipal, el tel�fon de l'Ajuntament, el domini de la web, etc, per a que els Ajuntaments revisen si les seues dades s�n correctes i si les tenim actualitzades.

copiador
=============
Aquest programa em serveix com un empaquetador de les meues copies de seguretat i fitxers importants dels meus equipos i els puja directament al meu Dropbox (que previament he configurat amb la utilitat dropbox_uploader.sh". El pots modificar i configurar molt f�cilment.


