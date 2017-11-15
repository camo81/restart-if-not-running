# Riavvio di un servizio se non è in esecuzione #

script per riavviare un processo di ubuntu se il servizio non è più attivo.

Variabili:
process_fullname: il nome completo del processo (visibile in top/htop)
service_name: il nome del servizio di ubuntu da riavviare (non funziona se i processi sono gestiti da systemtcl!)

lo script è da inserire in crontab di root con cadenza a scelta.
