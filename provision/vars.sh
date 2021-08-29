#!/bin/bash
### vars.sh ####
USER1='ec2-user'
USER2='suporte-gcp'
USER3='azureuser'
PASS='4linux'

function AdicionarUsuarios {
# Criando o usuário ec2-user
useradd -m -d "/home/${USER1}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER1}

# Criando o usuário suporte-gcp
useradd -m -d "/home/${USER2}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER2}

# Criando o usuário azureuser
useradd -m -d "/home/${USER3}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER3}
}

function InstalarPacotes {
# Atualizando os pacotes
sudo apt update -y; wait;

# Instalando pacotes essenciais para o curso
sudo apt install -y vim unzip;
}
