#!/usr/local/bin/bash
url="LA_TEUA_WEB.net";
response=$(curl -s -I -L $url | grep HTTP);

status=${response#* };
status=${status:0:3};

if [ "$status" != "200" ]
then
   echo "ATENCIÓ: LES WEBS MUNICIPALS ESTAN CAIGUDES. HI HA ALGUN PROBLEMA AL SERVIDOR WEB." | mail -s "LES WEBS NO ESTAN FUNCIONANT" "EL_TEU_EMAIL@dipcas.es"
fi
