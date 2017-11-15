#!/bin/bash

#----------------------------------------------------------------
#script per riavviare un processo di ubuntu se il servizio non è più attivo
#process_fullname: il nome completo del processo (visibile in top/htop)
#service_name: il nome del servizio di ubuntu da riavviare (non funziona se i processi sono gestiti da systemtcl!)
#da mettere nel cron con cadenza a scelta
#-----------------------------------------------------------------
process_fullname="amavisd-new (master)"
service_name="amavis"
TODAY=$(date)



if ! (pidof "$process_fullname" >/dev/null;  ) then
        service "$service_name" restart
        echo "$TODAY Eseguito restart dei proecessi di $service_name"
fi
