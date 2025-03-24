# Gerador de Chaves SSH

Este projeto é um script Bash que automatiza o processo de criação de chaves SSH e configuração do agente SSH para uso com o GitHub. Ele verifica se já existe uma chave SSH, gera uma nova chave se necessário e orienta o usuário a adicionar a chave pública ao GitHub.

## Funcionalidades

- Verifica se uma chave SSH já existe.
- Permite ao usuário criar uma nova chave SSH.
- Gera uma chave SSH usando o algoritmo Ed25519.
- Inicia o agente SSH e adiciona a chave gerada.
- Exibe a chave pública para que o usuário possa copiá-la e colá-la no GitHub.
- Testa a configuração da chave SSH com o GitHub.

## Pré-requisitos

- Um sistema operacional baseado em Unix (Linux, macOS).
- O Git deve estar instalado.
- O SSH deve estar instalado.

## Como Usar

1. **Clone o repositório:**
   ```bash
   git clone [[URL do repositório]](https://github.com/Rodrigo-Kelven/script_chave_ssh
   cd script_chave_ssh
   chmod +x Criar_ssh2.sh
   ./Criar_ssh2.sh
