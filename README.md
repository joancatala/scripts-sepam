scripts-sepam
=============

Aquí dejamos algunos scripts que usamos en el SEPAM para diversas funciones

capturador
=============
capturador es un shell script que mediante la aplicación wkhtmltoimage cada cinco segundos va capturando todas las portadas de las webs municipales adheridas al Projecte Web Municipal (http://pwm.dipcas.es) de la Diputación de Castellón.

Deja las capturas en formato PNG en la ruta /var/www/html/captures de la màquina

monitorizar (para eadmin y preeadmin)
=============
Es un shell script que nos sirve de menú y lanzador de diversas utilidades (reiniciar máquinas, reiniciar Apache y Tomcat, ver sus procesos activos, etc.

PyNotificador
=============
Este programa envía un correo a todos los e-mails de los Ayuntamientos con sus datos de responsable de la web municipal, teléfono y dominio, para que los Ayuntamientos los corrijan en caso de algún error o algún cambio de personal. Ejecutamos este programita python el día 1 cada 2 meses.

copiador
=============
Aquest programa em serveix com un empaquetador de les meues copies de seguretat i fitxers importants dels meus equipos i els puja directament al meu Dropbox (que previament he configurat amb la utilitat dropbox_uploader.sh". El pots modificar i configurar molt fàcilment.
