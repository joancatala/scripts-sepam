#!/usr/bin/python
# -*- encoding: utf-8 -*-
#
# PyActualizador es un programa que notifica per email a tots els Ajuntaments
# per a que comproven que la informacio de la base de dades municipal del SEPAM.
#
# El missatge esta en el camp "textoMensaje" (on diu: textoMensaje = '.........'.
#
# Per qualsevol incidencia, contactar amb Joan Catala Piñon <jcatala@dipcas.es>
#

import MySQLdb, smtplib

# Dades del servidor MySQL
SERVIDOR = 'servidor'
USUARI = 'usuari'
CONTRASENYA = 'contrasenya'
BASE_DE_DADES = 'base_de_dades'

db=MySQLdb.connect(host=SERVIDOR,user=USUARI, port=4406, passwd=CONTRASENYA,db=BASE_DE_DADES)
cursor=db.cursor()

# Preparem la consulta que unix la taula "ayuntamientos" y la "responsables_web"
#
sql="SELECT ayuntamientos.MUNICIPIO, ayuntamientos.CODIGO, ayuntamientos.email, ayuntamientos.web, responsables_web.nom_responsable, responsables_web.email_responsable, responsables_web.adherit, ayuntamientos.DOMICILIO, ayuntamientos.CP, ayuntamientos.TELEFONO, ayuntamientos.FAX, ayuntamientos.ALCALDE, ayuntamientos.SECRETARIO, ayuntamientos.escut from ayuntamientos left join responsables_web on ayuntamientos.CODIGO=responsables_web.CODIGO WHERE ayuntamientos.email NOT LIKE '%dipcas%' AND responsables_web.adherit='x'"
cursor.execute(sql)
resultado=cursor.fetchall()

#Agafem les dades. També les mostrem a la consola de manera interactiva.
for i in resultado:
    if (i[0]<>''):
        print '||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\n'
        print "Entidad: " + i[0]
        print 'Codigo INE: 12' + i[1]
    	print 'Email Ajuntament: ' + i[2]
        print 'Web: ' + i[3]
        print 'Responsable de la web: ' + i[4]
        print 'Email responsable web: ' + i[5]
        print 'Direccion del Ayuntamiento: ' + i[7]
        print 'CP: ' + i[8]
        print 'Telefono: ' + i[9]
        print 'FAX: ' + i[10]
        print 'Alcalde: ' + i[11]
        print 'Secretario: ' + i[12]
        print 'Escut: http://sepam.dipcas.es/files/escuts/' + i[13]        

        print 'Texto a enviar:\n'
        
        mail_user = 'USUARI'
        mail_pwd = 'CONTRASENYA'
        smtpserver = smtplib.SMTP("smtp.el_teu_domini.net")
        smtpserver.ehlo()
        smtpserver.starttls()
        smtpserver.ehlo
        
        smtpserver.login(mail_user, mail_pwd)
        header = 'To:' + i[5] + '\n' + 'From:' + 'jcatala@dipcas.es' + '\n' + 'Subject:Actualizador de datos del Ayuntamiento\n'
        textoMensaje = 'Hola,\nte enviamos este correo para mantener actualizada nuestra base de datos del SEPAM. Por favor, revisa los siguientes ' + \
        'datos:\n\n' + \
        '- Municipio: ' + i[0] + '\n' + \
        '- Localizacion: ' + i[7] + '\n' + \
        '- CP: ' + i[8] + '\n' + \
        '- Telefono: ' + i[9] + '\n' + \
        '- FAX: ' + i[10] + '\n' + \
        '- Correo electronico: ' + i[2] + '\n' + \
        '- Alcalde: ' + i[11] + '\n' + \
        '- Secretario: ' + i[12] + '\n' + \
        '- Web municipal: ' + i[3] + '\n' + \
        '- Responsable de la web municipal: ' + i[4] + '\n' + \
        '- Escudo oficial: http://sepam.dipcas.es/files/escuts/' + i[13] + '\n' + \
        '\nSi todo es correcto, confirma la informacion haciendo click en http://sepam.dipcas.es/actualizador.php?entidad='+i[1] + \
        '\nSi detectas algun dato incorrecto, responde a este correo con los datos buenos.\n\nGracias,\n\nhttp://sepam.dipcas.es \nSEPAM - DIPUTACION DE CASTELLON'

        print textoMensaje
        msg = header + textoMensaje 

        # Finalment, enviem el correu. PER A FUNCIONAR, ACTIVA ALGUNA OPCIÓ: PRODUCCIÓ O DESENVOLUPAMENT.
        #
        # En producció
        #smtpserver.sendmail(mail_user, i[5], msg)
        #
        # En desenvolupament
        #smtpserver.sendmail(mail_user, 'el_teu_nom@el_teu_domini.net', msg)     <---- PODEM FER PROVES AMB AQUESTA OPCIO TAMBE.

        print '---------------------------------------------------------\n'
        print 'Correu enviat per a ' + i[0] + ' al correu ' + i[5] + '\n'
        print '---------------------------------------------------------\n'
        print '||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\n\n\n\n\n\n\n\n'

smtpserver.close()
