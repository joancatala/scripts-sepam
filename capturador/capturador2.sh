#NOU FITXER QUE VULL IMPLEMENTAR AMB CUTPYCAT I FICAR-HO BE AL GIT

##############################################################################
# Haccemos unas capturas de pantalla de los portales webs municipales        #
# adheridos al proyecto Portals Web Municipals de la Diputacion de Castellon #
#                                                                            #
# Responsables: grupotic@dipcas.es                                           #
#                                                                            #
# Actualizacion de 11 de junio 2003 para que funcione en las nuevas rutas    #
# del servidor web NGINX y guardar las ultimas capturas en un directorio     #
# separado para mostrarlas en el listado de capturas del Projecte Web        #
# Municipal en http://sepam.dipcas.es/portals                                #
#                                                                            #
# Descarrega't el script a https://github.com/joancatala/scripts-sepam       #
##############################################################################

#Notificamos con un e-mail que el capturador.sh se ha activado
#echo "El script capturador inicia" | mail -s "Capturador se ha ejecutado" jcatala@dipcas.es

#Preparamos la aplicacion en el directorio "captures" dentro de la raiz de nginx
cd /var/www/html/captures
NOW=$(date +"%Y%m%d")

#Creamos un directorio con la fecha distinta de cada mes
mkdir ultimes_captures
mkdir $NOW
cd $NOW

#Empezamos a lanzar las capturas de pantalla
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.ajuntamentdain.es ajuntamentdain.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.albocasser.es albocasser.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lalcora.es lalcora.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.alcudiadeveo.es alcudiadeveo.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.alfondeguilla.es alfondeguilla.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.algimiadealmonacid.es algimiadealmonacid.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.almedijar.es almedijar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.altura.es altura.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.aranuel.es aranuel.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.aresdelmaestrat.es aresdelmaestrat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.argelita.es argelita.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.artana.es artana.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.atzenetadelmaestrat.es atzenetadelmaestrat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.ayodar.es ayodar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.azuebar.es azuebar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.elballestar.es elballestar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.barracas.es barracas.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.bejis.es bejis.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.benafer.es benafer.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.benasal.es benasal.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.benafigos.es benafigos.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.benlloch.es benlloch.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.betxi.es betxi.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.borriol.es borriol.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.cabanes.es cabanes.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.calig.es calig.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.canetloroig.es canetloroig.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.castelldecabres.es castelldecabres.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.castellfort.es castellfort.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.castellnovo.es castellnovo.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.castillodevillamalefa.es castillodevillamalefa.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.cati.es cati.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.caudiel.es caudiel.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.chovar.es chovar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.cinctorres.es cinctorres.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.cirat.es cirat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.cortesdearenoso.es cortesdearenoso.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.costur.es costur.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lescovesdevinroma.es lescovesdevinroma.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.eltoro.es eltoro.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.eslida.es eslida.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.espadilla.es espadilla.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.fanzara.es fanzara.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.figueroles.es figueroles.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.forcall.es forcall.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.fuentelareina.es fuentelareina.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.fuentesdeayodar.es fuentesdeayodar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.gaibiel.es gaibiel.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.geldo.es geldo.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.herbes.es herbes.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.higueras.es higueras.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lajana.es lajana.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lallosa.es lallosa.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.ajuntamentdelamata.es ajuntamentdelamata.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lesuseres.es lesuseres.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lucenadelcid.es lucenadelcid..es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.ludiente.es ludiente.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.altopalancia.es altopalancia.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.altmaestrat.es altmaestrat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.baixmaestrat.es baixmaestrat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.elsports.es elsports.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.planaalta.es planaalta.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.espadan-mijares.es espadan-mijares.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.matet.es matet.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.montan.es montan.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.olocaudelrey.es olocaudelrey.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.palanques.es palanques.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.pavias.es pavias.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.pinademontalgrao.es pinademontalgrao.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lapobladebenifassa.es lapobladebenifassa.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lapoblatornesa.es lapoblatornesa.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.portelldemorella.es portelldemorella.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.puebladearenoso.es puebladearenoso.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.ribesalbes.es ribesalbes.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.sacanet.es sacanet.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lasalzadella.es lasalzadella.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.santjoandemoro.es santjoandemoro.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.sanrafaeldelrio.es sanrafaeldelrio.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.sarratella.es sarratella.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.sierraengarceran.es sierraengarceran.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.soneja.es soneja.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.suera.es suera.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.tales.es tales.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.teresa.es teresa.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.tirig.es tirig.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.todolella.es todolella.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.toga.es toga.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.toras.es toras.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.torralbadelpinar.es torralbadelpinar.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.latorredenbesora.es latorredenbesora.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.torreendomenech.es torreendomenech.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.torrechiva.es torrechiva.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.traiguera.es traiguera.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.valldalba.es valldalba.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.valldealmonacid.es valldealmonacid.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vallat.es vallat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vallibona.es vallibona.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vilafames.es vilafames.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vilanovadalcolea.es vilanovadalcolea.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vilardecanes.es vilardecanes.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.lavilavella.es lavilavella.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.villahermosadelrio.es villahermosadelrio.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.villamalur.es villamalur.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.villanuevadeviver.es villanuevadeviver.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.villores.es villores.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.vistabelladelmaestrat.es vistabelladelmaestrat.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.xert.es xert.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.xodos.es xodos.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.zoritadelmaestrazgo.es zoritadelmaestrazgo.es.png
sleep 5
/usr/bin/wkhtmltoimage --width 1024 --height 768 --load-error-handling ignore www.zucaina.es zucaina.es.png
sleep 5

# Ara anem a copiar totes aquestes captures al directori "../ultimes_captures" per a que es mostren tambe al llistat de captures de
# pantalles a la web del Projecte Web Municipal http://sepam.dipcas.es/portals

cp * ../ultimes_captures/.

# Notificamos con un e-mail que el capturador.sh ha finalizado
echo "El script ha finalizado guardando una captura de pantalla de todas las webs municipales y se han guardado en http://pwm.dipcas.es/captures/" | mail -s "Capturador se ha ejecutado" grupotic@dipcas.es
