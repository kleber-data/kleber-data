

### 📚 Lista de Comandos Consolidada (Atualizada 13/05)

#### Navegação e Localização

- **pwd**: (Print Working Directory) Mostra o caminho completo de onde você está.
    
- **ls**: Lista os arquivos e pastas do diretório atual.
    
- **ls -l**: Lista com detalhes (permissões, dono e tamanho).
    
- **ls -l /bin/**: (Aprendizado de hoje) A barra no final força o `ls` a listar o conteúdo de um link simbólico (atalho) em vez de apenas mostrar o link.
    
- **ls -lt | head -n 5**: Mostra os últimos 5 arquivos modificados.
    
- **cd /**: Vai para a Raiz do sistema.
    
- **cd ~**: Volta para a sua pasta pessoal (`/home/kleber`).
    
- **cd ..**: Volta uma pasta para trás.
    
- **cd ../[nome]**: Volta uma pasta e já entra em outra.
    

#### Filtros e Visualização (Pipes e Coringas)

- **| (Pipe)**: O "cano". Joga a saída de um comando para outro (Ex: `ls | less`).
    
- **less**: Visualizador inteligente. Use **q** para sair e as setas para rolar.
    
- **ls [termo]***: O asterisco (`*`) é o curinga para "qualquer coisa". (Ex: `rm arquivo*` apaga tudo que começa com "arquivo").
    
- **ls ?rh***: O `?` ocupa exatamente uma posição.
    
- **ls arquivo[1-3]***: Busca arquivos com números específicos.
    

#### Manipulação de Arquivos e Pastas

- **mkdir**: Cria uma nova pasta.
    
- **mkdir 'Nome com Espaço'**: (Aprendizado de hoje) Use aspas simples para nomes compostos.
    
- **mkdir -p**: Cria pastas em cascata (ex: `Planilhas/Financeiro/2026`).
    
- **touch**: Cria um arquivo vazio.
    
- **cp / cp -r**: Copia arquivo ou pasta (recursivo).
    
- **mv**: Move ou Renomeia.
    
- **rm**: Apaga arquivos. (**Atenção: Sem lixeira!**).
    
- **rmdir**: (Aprendizado de hoje) Apaga pastas **somente se estiverem vazias**. Comando de segurança.
    
- **rm -rf**: (Aprendizado de hoje) O "Botão Nuclear". Apaga pastas e tudo dentro delas à força e sem perguntar.
    

#### Administração e Manutenção

- **sudo**: Executa como administrador (root).
    
- **sudo apt update && sudo apt upgrade -y**: Mantém o sistema em dia.
    
- **df -h**: Checa o espaço em disco.
    
- **history | tail -n 10**: Vê os últimos comandos.
    
- **clear (ou Ctrl + L)**: Limpa a tela.
    

#### Fluxo de Trabalho GitHub

- **git pull / git add . / git commit / git push**: O ciclo para manter seu código seguro na nuvem.
    

#### Atalhos de Teclado e Sinais Visuais

- **TAB (1x ou 2x)**: O melhor amigo do usuário Linux. Completa nomes e evita erros de digitação.
    
- **Ctrl + C**: Cancela processos travados.
    
- **seta -> (no terminal)**: (Aprendizado de hoje) Ajuda a completar caminhos (como você viu no `cd Meus...`).
    
- **l (no início do ls -l)**: Indica um **Link Simbólico** (atalho), como em `/bin -> usr/bin`.