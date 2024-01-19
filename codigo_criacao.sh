#!/bin/bash


echo "Iniciando codigo"

echo "Criando diretorios..."

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_ADM
useradd maria -m -c "maria" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_ADM
useradd joao -m -c "joao" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_VEN

useradd josefina -m -c "josefina" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_SEC
useradd amanda -m -c "amanda" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_SEC
useradd rogerio -m -c "rogerio" -s /bin/bash -p $(openssl passwd -1 0201) -G GRP_SEC

echo "Permissoes nos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Final do script..."



