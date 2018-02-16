# cercador de paraules als portals municipals del Projecte Web Municipal
# http://pwm.dipcas.es

import urllib2

print "----------------------------------------"
print "S'inicia el furoner"
print "----------------------------------------\n"
paraula = raw_input("Paraula que vols cercar: ")

# Netejem el fitxer de resultats abans de que comencem la cerca de la cadena 'paraula'
open('resultats_si.txt', 'w').close()
open('resultats_no.txt', 'w').close()
    

pagines_web = ['http://www.ajuntamentdain.es', 
'http://www.albocasser.es',  
'http://www.lalcora.es',  
'http://www.alcudiadeveo.es',  
'http://www.alfondeguilla.es', 
'http://www.algimiadealmonacid.es', 
'http://www.almedijar.es', 
'http://www.altura.es',
'http://www.aranuel.es',
'http://www.aresdelmaestrat.es', 
'http://www.argelita.es',  
'http://www.artana.es',  
'http://www.atzenetadelmaestrat.es',  
'http://www.ayodar.es',  
'http://www.azuebar.es',  
'http://www.elballestar.es',  
'http://www.barracas.es', 
'http://www.bejis.es',  
'http://www.benafer.es',  
'http://www.benasal.es', 
'http://www.benafigos.es', 
'http://www.benlloch.es', 
'http://www.betxi.es',  
'http://www.borriol.es', 
'http://www.cabanes.es',  
'http://www.calig.es', 
'http://www.canetloroig.es', 
'http://www.castelldecabres.es',  
'http://www.castellfort.es',  
'http://www.castellnovo.es',  
'http://www.castillodevillamalefa.es',  
'http://www.cati.es',  
'http://www.caudiel.es',  
'http://www.chovar.es',  
'http://www.cinctorres.es',  
'http://www.cirat.es',  
'http://www.cortesdearenoso.es', 
'http://www.costur.es',  
'http://www.lescovesdevinroma.es', 
'http://www.eltoro.es', 
'http://www.eslida.es',  
'http://www.espadilla.es',  
'http://www.fanzara.es',  
'http://www.figueroles.es', 
'http://www.forcall.es',  
'http://www.fuentelareina.es', 
'http://www.fuentesdeayodar.es', 
'http://www.gaibiel.es', 
'http://www.geldo.es',  
'http://www.herbes.es',  
'http://www.higueras.es',  
'http://www.lajana.es',  
'http://www.lallosa.es',  
'http://www.ajuntamentdelamata.es', 
'http://www.lesuseres.es', 
'http://www.lucenadelcid.es',  
'http://www.ludiente.es',  
'http://www.altopalancia.es',  
'http://www.altmaestrat.es',  
'http://www.baixmaestrat.es',  
'http://www.mancomunitatelsports.es',  
'http://www.planaalta.es',  
'http://www.espadan-mijares.es',  
'http://www.matet.es',  
'http://www.montan.es',  
'http://www.olocaudelrey.es',  
'http://www.palanques.es',  
'http://www.pavias.es',  
'http://www.pinademontalgrao.es',  
'http://www.lapobladebenifassa.es',  
'http://www.lapoblatornesa.es', 
'http://www.portelldemorella.es',  
'http://www.puebladearenoso.es',  
'http://www.ribesalbes.es',  
'http://www.sacanet.es',  
'http://www.lasalzadella.es', 
'http://www.santjoandemoro.es',  
'http://www.sanrafaeldelrio.es',  
'http://www.laserratella.es',  
'http://www.sierraengarceran.es', 
'http://www.soneja.es',  
'http://www.suera.es',  
'http://www.tales.es',  
'http://www.teresa.es',  
'http://www.tirig.es',  
'http://www.todolella.es',  
'http://www.toga.es', 
'http://www.toras.es',  
'http://www.torralbadelpinar.es',  
'http://www.latorredenbesora.es',  
'http://www.torreendomenech.es',  
'http://www.torrechiva.es',  
'http://www.traiguera.es',  
'http://www.valldalba.es', 
'http://www.valldealmonacid.es',  
'http://www.vallat.es',  
'http://www.vallibona.es', 
'http://www.vilafames.es',  
'http://www.vilanovadalcolea.es',  
'http://www.vilardecanes.es',  
'http://www.lavilavella.es', 
'http://www.villahermosadelrio.es',  
'http://www.villamalur.es',  
'http://www.villanuevadeviver.es',  
'http://www.villores.es',  
'http://www.vistabelladelmaestrat.es',  
'http://www.xert.es',  
'http://www.xodos.es',  
'http://www.zoritadelmaestrazgo.es',  
'http://www.zucaina.es']

       
for i in pagines_web:

    respuesta = urllib2.urlopen(i)
    contenidoWeb = respuesta.read()

    # Obrim el fitxer 'index.html' on descarreguem la web de l'actual url del bucle 'for'.
    f = open('index.txt', 'w')
    f.write(contenidoWeb)
    f.close

    # Comencem a cercar a totes les urls del projecte PWM
    def cerca():
            resultats_si = open('resultats_si.txt', 'a+')
            datafile = file('index.txt')

            for line in datafile:
                if paraula in line:
                    # Si troba la paraula a eixa linia, afegeix la url al fitxer resultatssi
                    resultats_si.write(i + ' \n')
                    resultats_si.close()
                    print i
                    return True


            resultats_no = open('resultats_no.txt', 'a+')
            # I si, en canvi, no troba la paraula a eixa linia, afegeix la url al fitxer resultats_no
            resultats_no.write(i + ' \n')
            resultats_no.close()
            print i
            return False
            exit

    print cerca()


print '\n\n------------------------------------------------'
print 'Aquestes webs tenen publicada la paraula "' + paraula + '":'
print '------------------------------------------------'
file = open("resultats_si.txt", "r") 
print file.read()

print '\n\n------------------------------------------------'
print 'I aquestes webs no la tenen publicada:'
print '------------------------------------------------'
file = open("resultats_no.txt", "r") 
print file.read()

wait = input("\nPULSA QUALSEVOL TECLA PER EIXIR DEL PROGRAMA...") 

