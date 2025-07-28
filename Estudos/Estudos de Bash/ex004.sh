#!/bin/bash

figlet "Google Chrome" | lolcat

echo "Baixando o Google Chrome..."
wget -O ~/Downloads/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

if [[ $? -ne 0 ]]; then
  echo "Falha no Download..."
  exit 1
fi

echo "Download concluido! Iniciando a instalação"
sudo apt install -y ~/Downloads/chrome.deb

if [[ $? -ne 0 ]]; then
  echo "Falha na instalação...Tentando corrigir..."
  sudo apt -f install -y

  if [[ $? -ne 0 ]]; then
    echo "Falha na correção automática..."
    exit 1
  fi

fi

echo "instalação concluida!" | lolcat
