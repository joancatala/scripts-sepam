#!/usr/bin/python
#
# PyNotificador es un programa que notifica per email a tots els Ajuntaments
# per a que comproven que la informacio del Projecte Web Municipal
# http://sepam.dipcas.es/portals
#
# Per qualsevol incidencia, contactar amb pwm@dipcas.es
# v0.1 25-juny-2012
#

import MySQLdb, smtplib

# Dades del servidor MySQL
SERVIDOR = 'TU-SERVIDOR-MYSQL'
USUARI = 'TU-USUARIO'
CONTRASENYA = 'TU-CONTRASEÑA'
BASE_DE_DADES = 'TU-BASE-DE-DATOS'

# Nuestro servidor MySQL usa el puerto 4406. Si el tuyo es distinto, cámbialo en la siguiente linea.
db=MySQLdb.connect(host=SERVIDOR,user=USUARI, port=4406, passwd=CONTRASENYA,db=BASE_DE_DADES)
cursor=db.cursor()

# Preparem la consulta que unix la taula "ayuntamientos" y la "responsables_web"
#
sql="SELECT ayuntamientos.MUNICIPIO, ayuntamientos.CODIGO, ayuntamientos.email, ayuntamientos.web, responsables_web.nom_responsable, responsables_web.email_responsable, responsables_web.adherit from ayuntamientos left join responsables_web on ayuntamientos.CODIGO=responsables_web.CODIGO WHERE ayuntamientos.email NOT LIKE '%dipcas%' AND responsables_web.adherit='x'"

cursor.execute(sql)
resultado=cursor.fetchall()

#Agafem les dades
for i in resultado:
    if (i[0]<>''):
        print 'Entidad: ' + i[0]
        print 'Codigo INE: 12' + i[1]
    	print 'Email oficial: ' + i[2] + '\n\n'
        print 'Web: ' + i[3]
        print 'Responsable de la web: ' + i[4]
        print 'Email del resposnable: ' + i[5]
        print '-----------------------------------------------------------------'
        
        mail_user = 'NOMBRE-DE-USUARIO-DEL-REMITENTE'
        mail_pwd = 'CONTRASEÑA-DEL-REMITENTE'
        smtpserver = smtplib.SMTP("EL-SMTP-DE-TU-DOMINIO")
        smtpserver.ehlo()
        smtpserver.starttls()
        smtpserver.ehlo
        
        smtpserver.login(mail_user, mail_pwd)
        header = 'To:' + i[2] + '\n' + 'From:' + 'pwm@dipcas.es' + '\n' + 'Subject:Revisar datos del responsable de la Web Municipal\n'
        print header
        msg = header + 'Hola,\nesto es un correo automatizado del Proyecto Web Municipal. Por favor, revisa los datos que tenemos en nuestra base de datos. Si los datos mostrados no son correctos responde a este correo con los datos correctos y los corregiremos.\n\nGracias y un saludo,\n\nWeb: ' + i[3] + '\nResponsable de la web municipial: ' + i[4] + '\nEmail del responsable: ' + i[5] + '\n\nhttp://sepam.dipcas.es \nSEPAM - DIPUTACION DE CASTELLON'

        smtpserver.sendmail(mail_user, i[2], msg)
        print '\n\n***********************************************************************\n'
        print 'Correo electronic enviat a la Entidad ' + i[0] + ' con correo ' + i[2] + '\n'
        print '***********************************************************************\n\n'

smtpserver.close()
