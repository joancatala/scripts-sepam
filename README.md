scripts-sepam
=============

Ací deixe alguns scripts que m'he creat per al SEPAM (Diputació de Castelló) per a controlar diferents tasques. 
Web del SEPAM http://sepam.dipcas.es
Web de la Diputació de Castelló http://www.dipcas.es

pwm_caigut
=============
Aquest programa em serveix per comprovar si el servidor web on tenim els Drupal de les webs municipals està funcionant o està caigut. Vaig fer aquest script una època quan el servidor experimentava moltes caigudes.

furoner_pwm
=============
Aquest programa busca una paraula que li diguem i fa una cerca global a la portada principal de totes les pàgines web municipals. Es poden veure totes les webs municipals a la pàgina principal del projecte (http://projectewebmunicipal.dipcas.es)

virtualhosts_apache
=============
Aquest script genera tots els virtualhosts al fitxer de configuració de l'Apache del servidor web on instal·larem les webs municipals basades en Drupal. L'script m'ajuda a automatitzar tasques i fer-ho tot ràpidament.

furoner_xarxa
=============
Aquest programa em fa un informe de C:\ i de C:\Users dels equips d'una xarxa LAN amb Windows, guarda les IPs actives de la xarxa al fitxer llistat.txt i el informe de fitxers i directoris al fitxer xarxa.txt

capturador
=============
capturador és un script que, mitjançant wkhtmltoimage, em crea una captura de pantalla de totes les pàgines webs municipals automatitzat cada 5 segons. La web del Projecte Web Municipal, on tenim l'enllaç a les webs municipals de la província de Castelló és http://projectewebmunicipal.dipcas.es

capturador deixa les captures en format PNG a la ruta /var/www/html/captures del servidor web

monitorizar (per a eadmin i preeadmin)
=============
Aquest és un script que ens serveix de menú principal de gestió dels servidors de l'Administració Electrónica instal·lada ací al datacenter de la Diputació amb un bus que connecta amb diferents serveis d'altres servidors de la Generalitat Valenciana. Les tasques que automatitza aquest script són reiniciar Apache, reiniciar Tomcat, mirar processos actuals, reiniciar màquines, etc.

PyNotificador
=============
Aquest programa envia una notificació a tots els ajuntaments, agafant la informació del responsable de la web municipal, el telèfon de l'Ajuntament, el domini de la web, etc, per a que els Ajuntaments revisen si les seues dades són correctes i si les tenim actualitzades.

copiador
=============
Aquest programa em serveix com un empaquetador de les meues copies de seguretat i fitxers importants dels meus equipos i els puja directament al meu Dropbox (que previament he configurat amb la utilitat dropbox_uploader.sh". El pots modificar i configurar molt fàcilment.


