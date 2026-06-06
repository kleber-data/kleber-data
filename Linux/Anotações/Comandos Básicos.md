
# 🐧 Comandos Básicos — Linux

**Autor:** Kleber  
**Curso:** Linux Fundamentals — DIO  
**Atualizado em:** 06/06/2026  
**Tags:** `#linux` `#dio` `#comandos` `#terminal` `#referência`

---

## 🧭 Navegação e Localização

| Comando               | O que faz                                                                                              |
| --------------------- | ------------------------------------------------------------------------------------------------------ |
| `pwd`                 | *(Print Working Directory)* Mostra o caminho completo de onde você está                                |
| `ls`                  | Lista os arquivos e pastas do diretório atual                                                          |
| `ls -l`               | Lista com detalhes (permissões, dono e tamanho)                                                        |
| `ls -l /bin/`         | A barra no final força o `ls` a listar o conteúdo de um link simbólico em vez de apenas mostrar o link |
| `ls -lt \| head -n 5` | Mostra os últimos 5 arquivos modificados                                                               |
| `ls -a`               | Lista tudo, inclusive arquivos ocultos (começam com `.`)                                               |
| `ls -lh`              | Lista com tamanho em formato legível (KB, MB, GB)                                                      |
| `cd /`                | Vai para a raiz do sistema                                                                             |
| `cd ~`                | Volta para a pasta pessoal (`/home/kleber`)                                                            |
| `cd ..`               | Volta uma pasta para trás                                                                              |
| `cd ../[nome]`        | Volta uma pasta e já entra em outra                                                                    |

---

## 🔍 Filtros e Visualização (Pipes e Coringas)

| Comando | O que faz |
|---|---|
| `\|` *(Pipe)* | O "cano" — joga a saída de um comando para outro (ex: `ls \| less`) |
| `less` | Visualizador inteligente — use `q` para sair e as setas para rolar |
| `ls [termo]*` | O asterisco (`*`) é o curinga para "qualquer coisa" (ex: `rm arquivo*` apaga tudo que começa com "arquivo") |
| `ls ?rh*` | O `?` ocupa exatamente uma posição |
| `ls arquivo[1-3]*` | Busca arquivos com números específicos |
| `history \| grep "termo"` | Filtra o histórico por palavra específica |

---

## 📂 Manipulação de Arquivos e Pastas

| Comando | O que faz |
|---|---|
| `mkdir` | Cria uma nova pasta |
| `mkdir 'Nome com Espaço'` | Use aspas simples para nomes compostos |
| `mkdir -p` | Cria pastas em cascata (ex: `Planilhas/Financeiro/2026`) |
| `touch` | Cria um arquivo vazio |
| `cp` / `cp -r` | Copia arquivo ou pasta (recursivo) |
| `mv nome_atual novo_nome` | Move ou renomeia arquivo/pasta |
| `rm` | Apaga arquivos (Atenção: sem lixeira!) |
| `rmdir` | Apaga pastas somente se estiverem vazias — comando de segurança |
| `rm -rf` | O "Botão Nuclear" — apaga pastas e tudo dentro delas à força e sem perguntar |
| `rm -rfv` | Igual ao `-rf` mas mostra tudo que está sendo apagado |
| `rm -rfvi` | Pede confirmação antes de apagar cada item (rede de segurança) |
| `cat arquivo.txt` | Lê o conteúdo de um arquivo |
| `cat -n arquivo.txt` | Lê com linhas numeradas |
| `nano arquivo.txt` | Abre o editor de texto amigável |
| `find -name nome` | Busca arquivo pelo nome na pasta atual |
| `find -name nome` (na raiz) | Busca no sistema todo — usar `sudo find` para pastas restritas |

---

## 🔐 Permissões

| Comando | O que faz |
|---|---|
| `chmod 750 /dir/` | Dono: tudo \| Grupo: leitura+execução \| Outros: nada |
| `chmod 755 /dir/` | Dono: tudo \| Grupo: leitura+execução \| Outros: leitura+execução |
| `chmod 775 /dir/` | Dono: tudo \| Grupo: tudo \| Outros: leitura+execução |
| `chmod 777 /dir/` | Todos: tudo — usar só em diretório público temporário |
| `chmod 644 arquivo` | Dono: leitura+escrita \| Grupo: leitura \| Outros: leitura |
| `chmod +x arquivo` | Adiciona permissão de execução para todos |
| `chmod -x arquivo` | Remove permissão de execução |
| `chown dono:grupo /dir/` | Altera o dono e o grupo de um diretório |
| `chown dono:grupo arquivo` | Altera o dono e o grupo de um arquivo específico |

### Tabela octal de referência
| Número | Permissão | Significa |
|---|---|---|
| 7 | rwx | leitura + escrita + execução |
| 6 | rw- | leitura + escrita |
| 5 | r-x | leitura + execução |
| 4 | r-- | somente leitura |
| 0 | --- | sem permissão |

---

## 👥 Gerenciamento de Usuários

| Comando | O que faz |
|---|---|
| `useradd nome -m -c "Nome" -s /bin/bash` | Cria usuário com home, comentário e shell |
| `useradd nome -p $(openssl passwd -6 senha)` | Cria usuário com senha criptografada (SHA-512) |
| `useradd nome -e DD/MM/AAAA` | Cria usuário com data de expiração |
| `passwd nome` | Define ou altera a senha do usuário |
| `passwd nome -e` | Força troca de senha no próximo login |
| `usermod nome -s /bin/bash` | Altera o shell do usuário |
| `usermod nome -c "Descrição"` | Altera o comentário do usuário |
| `usermod -G GRUPO nome` | Adiciona usuário a grupo (substitui grupos anteriores) |
| `usermod -aG GRUPO nome` | Adiciona usuário a grupo sem remover os anteriores |
| `usermod -l novo_nome Nome_Antigo` | Renomeia um usuário |
| `userdel -r -f nome` | Apaga usuário e sua pasta home |
| `chsh -s /bin/bash nome` | Altera o shell de login do usuário |
| `su nome` | Troca para outro usuário |
| `su - nome` | Troca de usuário e carrega o ambiente dele do zero (recomendado) |
| `cat /etc/passwd` | Lista todos os usuários do sistema |
| `cat /etc/shadow` | Lista senhas criptografadas (só root acessa) |

---

## 🏢 Gerenciamento de Grupos

| Comando | O que faz |
|---|---|
| `groupadd NOME` | Cria um novo grupo |
| `groupdel NOME` | Exclui um grupo |
| `gpasswd -d usuario grupo` | Remove usuário de um grupo |
| `cat /etc/group` | Lista todos os grupos do sistema |

---

## 🛡️ Administração e Manutenção

| Comando | O que faz |
|---|---|
| `sudo` | Executa como administrador (root) |
| `sudo apt update && sudo apt upgrade -y` | Mantém o sistema atualizado |
| `sudo apt autoremove` | Remove dependências antigas |
| `sudo apt autoclean` | Limpa o cache de pacotes |
| `df -h` | Checa o espaço em disco |
| `clear` *(ou Ctrl + L)* | Limpa a tela |

---

## 📜 Histórico de Comandos

| Comando | O que faz |
|---|---|
| `history` | Lista todos os comandos usados |
| `history 30` | Lista os últimos 30 comandos |
| `!!` | Executa o último comando |
| `sudo !!` | Executa o último comando como root |
| `!42` | Executa o comando de número 42 da lista |
| `history -d 42` | Exclui o comando de número 42 do histórico |
| `history -c` | Limpa todo o histórico da sessão atual |
| `history -w` | Salva o histórico da memória no arquivo físico |

---

## 🐚 Scripts

| Comando | O que faz |
|---|---|
| `chmod +x script.sh` | Dá permissão de execução ao script |
| `./script.sh` | Executa o script na pasta atual |
| `#!/bin/bash` | Primeira linha obrigatória de todo script bash *(Shebang)* |

---

## 🐙 Fluxo de Trabalho GitHub

| Comando | O que faz |
|---|---|
| `git pull` | Puxa atualizações do repositório remoto |
| `git add .` | Prepara todos os arquivos alterados |
| `git commit -m "mensagem"` | Salva as alterações com descrição |
| `git push` | Envia os commits para o GitHub |

---

## ⌨️ Atalhos de Teclado e Sinais Visuais

| Atalho / Sinal | O que faz |
|---|---|
| `TAB` *(1x ou 2x)* | Melhor amigo do usuário Linux — completa nomes e evita erros de digitação |
| `Ctrl + C` | Cancela processos travados (Sinal de interrupção) |
| `Ctrl + D` | Sai do usuário atual (igual ao comando `exit`) |
| `Seta →` | No terminal moderno, ajuda a completar caminhos (autosuggestions) |
| `l` no início do `ls -l` | Indica um Link Simbólico (atalho), como em `/bin -> usr/bin` |
| `d` no início do `ls -l` | Indica um Diretório (pasta) |
| `-` no início do `ls -l` | Indica um Arquivo comum |
| `q` | Sai do visualizador `less` ou `more` |
| `$` no prompt | Indica que você está logado como um Usuário comum |
| `#` no prompt | Indica que você está logado como Root (superusuário) |

---
**Autor:** Kleber | Linux Fundamentals — DIO