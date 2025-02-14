#!/bin/bash

echo "criando diretórios..."

mkdir -p /publico /adm /ven /sec

echo "diretórios criados!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM

groupadd GRP_VEN 

groupadd GRP_SEC

echo "Grupos criados!!!" 

echo "criando usuários e designando grupos"

useradd carlos -c "carlos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "maria" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd maria  -e

useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd debora -e

useradd joao_ -c "joao_" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd joao_ -e

useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd roberto -e


useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd josefina -e


useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd amanda -e


useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuários criados!!!"

echo "Definindo permissões de acesso a diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico 
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Definidas permissões"
echo "Finalizado"	 

