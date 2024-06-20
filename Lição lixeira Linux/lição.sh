Open v
 #1/bin/bash
23
# Verificar se o comando trash-empty está disponivel

if command -v trash-empty >/dev/null 2>&1; then
echo "Esvaziando a lixeira usando trash-empty...*
5.67
trash-empty
if [S? -ne 0 1: then

echo
"Erro ao esvaziar a lixeira."

exit 1

fi

else

# Se trash-empty não estiver disponível, tentar outras maneiras de esvaztar a Lixetra

echo Esvaziando a lixeira..."

# Tentativa 1: Usar gio (Gnome)

gio trash --enpty

fi

# Tentativa 2: Usar gufs-trash (se disponível)

if command -v gvfs-trash >/dev/null 2>81; then

gyfs-trash -- empty



# Tentativa 3: Remover diretório da lixeira diretamente

lixeira="$HOME/. local/share/Trash**

if L-d "Slixeira" ]:
then

rm -rf "Slixeira"/*

if [S? -ne 0 ]: then

echo "Erro ao esvaziar a lixeira."

exit 1

fi

else

echo "Diretório da lixeira não encontrado."

exit 1

   fi
fi

echo "Lixeira esvaziada com sucesso."