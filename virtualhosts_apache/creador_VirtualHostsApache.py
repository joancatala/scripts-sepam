#!/usr/bin/python
# -*- encoding: utf-8 -*-
#

import os, MySQLdb

# Dades del servidor MySQL
SERVIDOR = ''
USUARI = ''
CONTRASENYA = ''
BASE_DE_DADES = ''

db=MySQLdb.connect(host=SERVIDOR,user=USUARI, port=4406, passwd=CONTRASENYA,db=BASE_DE_DADES)
cursor=db.cursor()

# Preparem la consulta que unix la taula "ayuntamientos" y la "responsables_web"
#
sql="SELECT CODIGO, MUNICIPIO, web FROM ayuntamientos ORDER BY CODIGO asc"
cursor.execute(sql)
resultado=cursor.fetchall()

#Agafem les dades. TambÃ© les mostrem a la consola de manera interactiva.
for i in resultado:
    if (i[0]<>''):

        #Obrim el fitxer de text
        f=open("fitxer_resultant.txt","w")

        #Agafar les dades i deixem el resultat al fitxer
        for i in resultado:

            f.write('##############################################\n')
            f.write('# VirtualHost ' + i[1] + '\n')
            f.write('##############################################\n')
            f.write('<VirtualHost *:80>\n')
            f.write('DocumentRoot "/var/www/html/pwm/' + i[0] + '"\n')
            f.write('ServerName ' + i[2] + '\n')
            f.write('ServerAlias ' + i[2] + '\n')
            f.write(        'RewriteEngine on \n')
            f.write(        'RewriteCond %{REQUEST_METHOD} ^(TRACE|TRACK)\n')
            f.write(        'RewriteRule .* - [F]\n')
            f.write(' \n')
            f.write('ErrorLog /var/log/httpd/' + i[2] + '_log\n')
            f.write('<Directory "/var/www/html/pwm/' + i[0] + '">\n')
            f.write('allow from all\n')
            f.write('Options +Indexes\n')
            f.write('</Directory>\n')
            f.write('</VirtualHost>\n\n\n')

        #tanquem el fitxer
        f.close()
