#!/bin/bash
set -e

echo "🔄 Actualizando sistema..."
sudo apt update -y && sudo apt upgrade -y

#################################
# Utilidades básicas
#################################
echo "📦 Instalando utilidades base..."
sudo apt install -y \
    git curl wget unzip vim nano make jq net-tools iproute2 \
    gnupg pass apt-transport-https ca-certificates lsb-release \
    software-properties-common libfuse2

#################################
# Docker
#################################
echo "🐳 Instalando Docker..."
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com | sh
    sudo usermod -aG docker $USER
else
    echo "✅ Docker ya está instalado."
fi

#################################
# Helm
#################################
echo "⎈ Instalando Helm..."
if ! command -v helm &> /dev/null; then
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
else
    echo "✅ Helm ya está instalado."
fi

#################################
# Terraform
#################################
echo "📦 Instalando Terraform..."
if ! command -v terraform &> /dev/null; then
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
        | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt update -y && sudo apt install terraform -y
else
    echo "✅ Terraform ya está instalado."
fi

#################################
# Ansible
#################################
echo "📦 Instalando Ansible..."
if ! command -v ansible &> /dev/null; then
    sudo apt update -y && sudo apt install ansible -y
else
    echo "✅ Ansible ya está instalado."
fi

#################################
# Kubernetes CLI (kubectl)
#################################
echo "📦 Instalando kubectl..."
if ! command -v kubectl &> /dev/null; then
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl
else
    echo "✅ kubectl ya está instalado."
fi

#################################
# Vagrant
#################################
echo "📦 Instalando Vagrant..."
if ! command -v vagrant &> /dev/null; then
    wget -O /tmp/vagrant.zip https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_linux_amd64.zip
    sudo unzip -o /tmp/vagrant.zip -d /usr/local/bin/
    rm /tmp/vagrant.zip
else
    echo "✅ Vagrant ya está instalado."
fi

#################################
# Versiones instaladas
#################################
echo "✅ Instalación completada. Versiones:"
echo "Git: $(git --version)"
echo "GNU Make: $(make --version | head -n1)"
echo "jq: $(jq --version)"
echo "Docker: $(docker --version)"
echo "Helm: $(helm version --short)"
echo "Terraform: $(terraform version | head -n1)"
echo "Ansible: $(ansible --version | head -n1)"
echo "kubectl: $(kubectl version --client --short)"
echo "Vagrant: $(vagrant --version)"

echo "⚠️  Recuerda cerrar sesión o reiniciar para que Docker funcione sin sudo."


