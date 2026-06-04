

### # 🐧 Comandos Básicos — Linux

**Autor:** Kleber  
**Curso:** Linux Fundamentals — DIO  
**Atualizado em:** 13/05/2026  
**Tags:** #linux #dio #comandos #terminal #referência

---

## Navegação e Localização

| Comando | O que faz |
|---|---|
| `pwd` | (Print Working Directory) Mostra o caminho completo de onde você está |
| `ls` | Lista os arquivos e pastas do diretório atual |
| `ls -l` | Lista com detalhes (permissões, dono e tamanho) |
| `ls -l /bin/` | A barra no final força o `ls` a listar o conteúdo de um link simbólico em vez de apenas mostrar o link |
| `ls -lt \| head -n 5` | Mostra os últimos 5 arquivos modificados |
| `cd /` | Vai para a raiz do sistema |
| `cd ~` | Volta para a pasta pessoal (`/home/kleber`) |
| `cd ..` | Volta uma pasta para trás |
| `cd ../[nome]` | Volta uma pasta e já entra em outra |

---

## Filtros e Visualização (Pipes e Coringas)

| Comando            | O que faz                                                                                                   |
| ------------------ | ----------------------------------------------------------------------------------------------------------- |
| `\|` (Pipe)        | O "cano" — joga a saída de um comando para outro (ex: `ls \| less`)                                         |
| `less`             | Visualizador inteligente — use `q` para sair e as setas para rolar                                          |
| `ls [termo]*`      | O asterisco (`*`) é o curinga para "qualquer coisa" (ex: `rm arquivo*` apaga tudo que começa com "arquivo") |
| `ls ?rh*`          | O `?` ocupa exatamente uma posição                                                                          |
| `ls arquivo[1-3]*` | Busca arquivos com números específicos                                                                      |

---

## Manipulação de Arquivos e Pastas

| Comando | O que faz |
|---|---|
| `mkdir` | Cria uma nova pasta |
| `mkdir 'Nome com Espaço'` | Use aspas simples para nomes compostos |
| `mkdir -p` | Cria pastas em cascata (ex: `Planilhas/Financeiro/2026`) |
| `touch` | Cria um arquivo vazio |
| `cp / cp -r` | Copia arquivo ou pasta (recursivo) |
| `mv` | Move ou renomeia |
| `rm` | Apaga arquivos (**Atenção: sem lixeira!**) |
| `rmdir` | Apaga pastas **somente se estiverem vazias** — comando de segurança |
| `rm -rf` | O "Botão Nuclear" — apaga pastas e tudo dentro delas à força e sem perguntar |

---

## Administração e Manutenção

| Comando | O que faz |
|---|---|
| `sudo` | Executa como administrador (root) |
| `sudo apt update && sudo apt upgrade -y` | Mantém o sistema atualizado |
| `df -h` | Checa o espaço em disco |
| `history \| tail -n 10` | Vê os últimos comandos |
| `clear` (ou `Ctrl + L`) | Limpa a tela |

---

## Fluxo de Trabalho GitHub

| Comando | O que faz |
|---|---|
| `git pull` | Puxa atualizações do repositório remoto |
| `git add .` | Prepara todos os arquivos alterados |
| `git commit -m "mensagem"` | Salva as alterações com descrição |
| `git push` | Envia os commits para o GitHub |

---

## Atalhos de Teclado e Sinais Visuais

| Atalho / Sinal | O que faz |
|---|---|
| `TAB` (1x ou 2x) | Melhor amigo do usuário Linux — completa nomes e evita erros de digitação |
| `Ctrl + C` | Cancela processos travados |
| Seta `→` no terminal | Ajuda a completar caminhos |
| `l` no início do `ls -l` | Indica um **Link Simbólico** (atalho), como em `/bin -> usr/bin` |
| `q` | Sai do visualizador `less` ou `more` |

---

*Autor: Kleber | Linux Fundamentals — DIO*