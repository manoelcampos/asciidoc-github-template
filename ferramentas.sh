#!/bin/sh

#Se é macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew -v || \
    (echo "Gerenciador de pacotes homebrew não está instalado. Baixando e instalando..."; \
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)")

    brew install asciidoctor 
    gem install asciidoctor-pdf asciidoctor-revealjs --user-install
else
    sudo apt-get update
    sudo apt-get install software-properties-common apt-transport-https wget -y

    sudo apt-get install make ruby gem asciidoctor git -y
    sudo gem install asciidoctor-pdf asciidoctor-revealjs

    echo "Baixando Visual Studio Code. Se a instalação não funcionar, baixe manualmente em http://code.visualstudio.com"
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt-get update
    sudo apt-get install code -y
fi

