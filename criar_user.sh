#!/bin/bash

echo "criando usuarios..."

useradd convidado2 -c "convidado 2" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd convidado2 -e

useradd convidado3 -c "convidado 3" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd convidado3  -e

useradd convidado4 -c "convidado especial" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd convidado4 -e

echo "Finalizado!!!"




