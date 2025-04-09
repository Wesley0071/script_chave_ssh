# Gerador de Chaves SSH

## Versão 0.0.12
![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) 


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
   git clone https://github.com/Rodrigo-Kelven/script_chave_ssh
   cd script_chave_ssh
   chmod +x Criar_ssh2.sh
   ./Criar_ssh2.sh


## Possiveis Melhorias

- ***Tratamento de Erros: Adicione verificações mais detalhadas para capturar e relatar erros específicos durante a execução de comandos, como ssh-keygen e ssh-add.***

- ***Documentação: Inclua comentários explicativos no código para facilitar a compreensão do que cada parte do script faz.***

- ***Verificação de Dependências: Antes de executar o script, verifique se o ssh-keygen e o ssh-agent estão disponíveis no sistema.***

- ***Melhorias na Interação: Use um loop para garantir que o usuário insira um email válido e forneça feedback claro sobre o que deve ser feito em cada etapa.***

- ***Opções de Algoritmo: Permita que o usuário escolha o tipo de chave (por exemplo, RSA ou ED25519) e o tamanho da chave, se aplicável.***

- ***Limpeza de Chaves Anteriores: Ofereça uma opção para remover chaves SSH existentes antes de criar uma nova, se o usuário desejar.***

- ***Feedback Visual: Adicione uma barra de progresso ou mensagens de status para indicar o progresso durante a geração da chave e a configuração do agente SSH.***

- ***Configuração Automática: Inclua uma opção para adicionar automaticamente a chave pública ao GitHub usando a API do GitHub, se o usuário fornecer um token de acesso.***

- ***Personalização do Nome da Chave: Permita que o usuário escolha um nome personalizado para a chave SSH, em vez de usar o padrão.***

- ***Verificação de Conexão: Após testar a chave SSH, forneça instruções adicionais caso a conexão falhe, como verificar as configurações do GitHub ou a chave pública.***



## Autores
- [@Wesley Thiago](https://github.com/Wesley0071)

## Contribuidores
- [@Rodrigo_Kelven](https://github.com/Rodrigo-Kelven)
- [@Raelsantana](https://github.com/Raelsantana)
- [@Tiago-Dev0708](https://github.com/Tiago-Dev0708)
