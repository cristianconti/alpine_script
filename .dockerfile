# Utilizziamo l'ultima versione stabile di Alpine Linux come base
FROM alpine:latest

# Aggiorniamo il pacchetto manager e installiamo i pacchetti necessari
RUN apk update && apk add zip poppler-utils

# Impostiamo la directory di lavoro all'interno del container (opzionale)
WORKDIR /share/CACHEDEV2_DATA/docker

# Esponi una porta (opzionale, se l'applicazione richiede una porta specifica)
EXPOSE 8080

# Comando predefinito da eseguire quando si avvia un container da questa immagine
CMD ["/bin/sh"]
