###############################################################################################
# Inici del furoner_xarxa.py
# joan@riseup.net - http://github.com/joancatala 
# Copyleft 19 setembre 2018
###############################################################################################
import os, socket, os.path
from os import listdir

###############################################################################################
# Aci generem el llistat de les IPs actives de la nostra xarxa i ho desem al
# fitxer anomenat llistat.txt 
###############################################################################################

ip=9
fitxer_llistat = open ( 'llistat.txt', 'w' )
  
while ip<24 :
     
    # Si el fitxer existeix, el guardem al llistat.txt, si no ho ignorem 
    try:
        socket.gethostbyaddr('192.168.0.'+str(ip))
        fitxer_llistat.write ('192.168.0.' +str(ip)+'\n') 
            
    except socket.herror:
        print ('No es troba activa la IP 192.168.0.' +str(ip) +', la descartarem del fitxer xarxa.txt final.')
        
    ip=ip+1

fitxer_llistat.close()

###############################################################################################
# Ara llistem els directoris i perfils d'usuari que veiem als equips actius 
# i desem tota aquesta informacio ordenada en el fitxer xarxa.txt
###############################################################################################

fitxer_analisi = open ( 'xarxa.txt', 'w' )
fitxer_llistat = open ( 'llistat.txt', 'r' )

# Aci comencem a llistar directoris i fitxers cd C:\ i els perfils d'usuari de C:\Users\ de Windows 10
for linea in fitxer_llistat: 
    linea_neta = linea.replace('\n', '')
    fitxer_analisi.write('\n##############################################################\n')
    fitxer_analisi.write('Directoris de C: en la IP ' + str(linea))
    fitxer_analisi.write('##############################################################\n')
    
    try:
        for i in os.listdir('\\\\' +str(linea_neta)+ '\c$'):     
                fitxer_analisi.write('\t'+ i + '\n')
                
        fitxer_analisi.write('\n\nLlistat dels perfils d\'usuari:\n')
        
        for i in os.listdir('\\\\' +str(linea_neta)+ '\Users'):     
                fitxer_analisi.write('\t ---> ' + i + '\n')    
        fitxer_analisi.write('\n\n\n')
        
    except:
        fitxer_analisi.write('No podem mostrar fitxers amb la IP ' + str(linea_neta))
        fitxer_analisi.write('\n\n\n')

fitxer_analisi.close()

print 'Fi del programa'