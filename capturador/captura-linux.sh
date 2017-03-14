i##############################################################################
# Haccemos unas capturas de pantalla de los portales webs municipales        #
# adheridos al proyecto Portals Web Municipals de la Diputacion de Castellon #
#                                                                            #
# Responsables: grupotic@dipcas.es                                           #
#                                                                            #
# Actualizacion de 14 de marzo de 2017 para que funcione en la ruta        #
# del servidor web NGINX y guardar las ultimas capturas en un directorio     #
# separado para mostrarlas en el listado de capturas del Projecte Web        #
# Municipal en http://sepam.dipcas.es/portals                                #
#                                                                            #
# Descarrega't el script a https://github.com/joancatala/scripts-sepam       #
##############################################################################

#Preparamos la aplicacion en el directorio "captures" dentro de la raiz de nginx
cd /home/pi/captures
NOW=$(date +"%Y%m%d")

#Creamos un directorio con la fecha distinta de cada mes
mkdir ultimes_captures
mkdir $NOW
cd $NOW

#Empezamos a lanzar las capturas de pantalla amb cutycapt
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.ajuntamentdain.es --out=ajuntamentdain.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.albocasser.es --out=albocasser.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lalcora.es --out=lalcora.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.alcudiadeveo.es --out=alcudiadeveo.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.alfondeguilla.es --out=alfondeguilla.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.algimiadealmonacid.es --out=algimiadealmonacid.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.almedijar.es --out=almedijar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.altura.es --out=altura.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.aranuel.es --out=aranuel.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.aresdelmaestrat.es --out=aresdelmaestrat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.argelita.es --out=argelita.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.artana.es --out=artana.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.atzenetadelmaestrat.es --out=atzenetadelmaestrat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.ayodar.es --out=ayodar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.azuebar.es --out=azuebar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.elballestar.es --out=elballestar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.barracas.es --out=barracas.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.bejis.es --out=bejis.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.benafer.es --out=benafer.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.benasal.es --out=benasal.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.benafigos.es --out=benafigos.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.benlloch.es --out=benlloch.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.betxi.es --out=betxi.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.borriol.es --out=borriol.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.cabanes.es --out=cabanes.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.calig.es --out=calig.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.canetloroig.es --out=canetloroig.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.castelldecabres.es --out=castelldecabres.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.castellfort.es --out=castellfort.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.castellnovo.es --out=castellnovo.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.castillodevillamalefa.es --out=castillodevillamalefa.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.cati.es --out=cati.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.caudiel.es --out=caudiel.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.chovar.es --out=chovar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.cinctorres.es --out=cinctorres.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.cirat.es --out=cirat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.cortesdearenoso.es --out=cortesdearenoso.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.costur.es --out=costur.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lescovesdevinroma.es --out=lescovesdevinroma.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.eltoro.es --out=eltoro.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.eslida.es --out=eslida.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.espadilla.es --out=espadilla.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.fanzara.es --out=fanzara.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.figueroles.es --out=figueroles.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.forcall.es --out=forcall.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.fuentelareina.es --out=fuentelareina.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.fuentesdeayodar.es --out=fuentesdeayodar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.gaibiel.es --out=gaibiel.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.geldo.es --out=geldo.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.herbes.es --out=herbes.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.higueras.es --out=higueras.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lajana.es --out=lajana.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lallosa.es --out=lallosa.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.ajuntamentdelamata.es --out=ajuntamentdelamata.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lesuseres.es --out=lesuseres.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lucenadelcid.es --out=lucenadelcid..es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.ludiente.es --out=ludiente.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.altopalancia.es --out=altopalancia.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.altmaestrat.es --out=altmaestrat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.baixmaestrat.es --out=baixmaestrat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.elsports.es --out=elsports.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.planaalta.es --out=planaalta.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.espadan-mijares.es --out=espadan-mijares.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.matet.es --out=matet.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.montan.es --out=montan.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.olocaudelrey.es --out=olocaudelrey.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.palanques.es --out=palanques.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.pavias.es --out=pavias.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.pinademontalgrao.es --out=pinademontalgrao.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lapobladebenifassa.es --out=lapobladebenifassa.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lapoblatornesa.es --out=lapoblatornesa.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.portelldemorella.es --out=portelldemorella.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.puebladearenoso.es --out=puebladearenoso.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.ribesalbes.es --out=ribesalbes.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.sacanet.es --out=sacanet.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lasalzadella.es --out=lasalzadella.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.santjoandemoro.es --out=santjoandemoro.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.sanrafaeldelrio.es --out=sanrafaeldelrio.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.sarratella.es --out=sarratella.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.sierraengarceran.es --out=sierraengarceran.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.soneja.es --out=soneja.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.suera.es --out=suera.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.tales.es --out=tales.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.teresa.es --out=teresa.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.tirig.es --out=tirig.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.todolella.es --out=todolella.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.toga.es --out=toga.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.toras.es --out=toras.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.torralbadelpinar.es --out=torralbadelpinar.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.latorredenbesora.es --out=latorredenbesora.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.torreendomenech.es --out=torreendomenech.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.torrechiva.es --out=torrechiva.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.traiguera.es --out=traiguera.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.valldalba.es --out=valldalba.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.valldealmonacid.es --out=valldealmonacid.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vallat.es --out=vallat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vallibona.es --out=vallibona.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vilafames.es --out=vilafames.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vilanovadalcolea.es --out=vilanovadalcolea.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vilardecanes.es --out=vilardecanes.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.lavilavella.es --out=lavilavella.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.villahermosadelrio.es --out=villahermosadelrio.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.villamalur.es --out=villamalur.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.villanuevadeviver.es --out=villanuevadeviver.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.villores.es --out=villores.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.vistabelladelmaestrat.es --out=vistabelladelmaestrat.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.xert.es --out=xert.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.xodos.es --out=xodos.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.zoritadelmaestrazgo.es --out=zoritadelmaestrazgo.es.png
sleep 5
xvfb-run --server-args="-screen 4, 1024x768x24" cutycapt --min-width=1600  --url=http://www.zucaina.es --out=zucaina.es.png
sleep 5
echo "Totes les captures han estat realitzades" | mutt -s "CUTYCAPT: Totes les captures han estat realitzades" joancatalapinyo@gmail.com

# Ara anem a copiar totes aquestes captures al directori "../ultimes_captures" per a que es mostren tambe al llistat de captures de
# pantalles a la web del Projecte Web Municipal http://sepam.dipcas.es/portals

cp * ../ultimes_captures/.
mogrify -resize 300x300 ../ultimes_captures/*
cd ..

# Fem els enviaments a RPi2
scp -rp $NOW joan@192.168.1.105:/var/www/nuvolet/captures/.
scp -rp ultimes_captures joan@192.168.1.105:/var/www/nuvolet/captures/.

# Notificamos con un e-mail que el capturador.sh ha finalizado
#echo "El script ha finalizado guardando una captura de pantalla de todas las webs municipales y se han guardado en http://pwm.dipcas.es/captures/" | mail -s "Capturador se ha ejecutado" grupotic@dipcas.es
echo "Enviades les captures a Raspberry Pi 2" | mutt -s "SCP: enviades les captures a Raspberry Pi 2" joancatalapinyo@gmail.com
