echo "Criando chave ssh"

echo "Verificando se já existe uma chave ssh"

if [ -f ~/.ssh/id_ed25519 ]; then
    echo "Você já tem uma chave ssh"
    read -p "Deseja criar uma nova chave ssh (s/n): " resposta
    if [[ "$resposta" != "s" ]]; then
        echo "Finalizando processo!!"
        exit 0
    fi
fi

read -p "Digite o seu email do github: " email
if [[ -z "$email" ]]; then
    echo "Email não fornecido. Encerrando operação!!"
    exit 1
fi

echo "Gerando chave ssh no seu e-mail $email"
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -N ""
if [ $? -ne 0 ]; then
    echo "Erro ao gerar a chave ssh"
    exit 1
fi
echo "Chave gerada com sucesso!!"

echo "Iniciando agente ssh"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
if [ $? -ne 0 ]; then
    echo "Erro ao adicionar agente SSH"
    exit 1
fi
echo "Agente SSH adicionado com sucesso!!"

echo "Chave pública gerada!!"
cat ~/.ssh/id_ed25519.pub
echo "Sua chave ssh"
echo "Copie esta chave e cole no github."
while [ "$confirmacao" != "s" ]; do
    read -p "Já digitou a chave SSH no github? (s/n) " confirmacao
    if [ "$confirmacao" != "s" ]; then
        echo "Coloque sua chave no github!"
    else
        break
    fi
done

echo "Testando sua chave SSH"
ssh -T git@github.com
if [ $? -eq 0 ]; then
    echo "Configuração SSH feita com sucesso"
else
    echo "Falha na configuração SSH"
fi

echo "PROCESSO FINALIZADO!!!!!"
