
**Autor:** Kleber  
**Curso:** Linux Fundamentals — DIO  
**Ambiente:** Ubuntu nativo (ThinkPad T495) + Servidor EC2 AWS  
**Tags:** #linux #dio #fundamentos #terminal #aws

---

## 06/05/2026 — Introdução

No curso de Linux Fundamentals o professor está usando uma VM para Linux Ubuntu. Estou replicando no Linux Ubuntu nativo os principais princípios de manipulação de arquivos sem a necessidade de uma VM.

Serão apresentados comandos para copiar arquivos, apagar arquivos, criar diretórios, navegar pelo sistema de arquivos etc. Tudo será feito via terminal. Todo comando só é executado após apertar a tecla **Enter**.

> ⚠️ **Atenção:** o Linux é rígido com letras maiúsculas e minúsculas. O comando `Date` não é reconhecido — o correto é `date`.

---

### Navegando pelo Sistema de Arquivos

A navegação no Linux é diferente do Windows. Antes de qualquer atividade via terminal é essencial saber onde você está. Use o `pwd` sempre.

```bash
pwd          # mostra o diretório atual
cd /         # vai para a raiz do sistema
cd ~         # vai para a pasta pessoal do usuário
cd ..        # volta um nível
cd ../pasta  # sai da pasta atual e já entra em outra
```

---

### Observações pessoais

- No começo confundi bastante os caminhos.
- Usar `pwd` antes de qualquer coisa ajuda muito a não se perder.
- O mundo do Linux é completamente diferente do Windows — você sente que está no controle total da máquina.
- Ninguém nasce sabendo, a prática diária eleva o conhecimento.

---

## 07/05/2026 — Dominando os Caminhos no Linux

No Windows a gente trabalha clicando em pastas. No Linux o terminal é o guia.

- **A raiz é o topo:** `cd /` te joga no começo de tudo. No Linux não tem "Disco C:", tudo nasce do `/`.
- **Localização é tudo:** usar `pwd` antes de qualquer coisa garante que você sabe onde está.
- **Caminho Absoluto vs Relativo:**
  - `cd /var/log` → caminho completo a partir da raiz (absoluto).
  - `cd log` → funciona se você já estiver dentro de `/var` (relativo).
- **Voltar:** `cd ..` é o botão de voltar. `cd ../pasta` sai de uma pasta e já entra em outra sem perder tempo.

---

## 08/05/2026 — Manutenção do Sistema e Filtragem de Arquivos

### Manutenção do Sistema

```bash
sudo apt update          # atualiza a lista de pacotes
sudo apt upgrade -y      # instala as atualizações
sudo apt autoremove      # remove dependências antigas
sudo apt autoclean       # limpa o cache de pacotes
```

---

### Quem realmente manda no Linux

O administrador absoluto é o **root**. Seu usuário normal não roda como root o tempo inteiro. Isso evita:

- Apagar arquivos críticos sem querer.
- Vírus terem acesso total.
- Programas modificarem o sistema inteiro.

O comando `sudo` significa "execute isso como administrador". É por isso que ele pede senha.

---

### Filtrando a Exibição de Arquivos

Em servidores sem interface gráfica, usamos o **Pipe** (`|`) para filtrar resultados.

```bash
ls | more    # básico — Enter (linha), Espaço (página), q (sair)
ls | less    # avançado — setas para navegar, / para buscar, q para sair
```

---

### Identificação Visual de Arquivos e Diretórios

| Visual | Significa |
|---|---|
| Nome com `/` no final | Diretório (pasta) |
| Nome sem `/` | Arquivo |
| Azul escuro | Diretório |
| Branco/cinza | Arquivo comum |
| Azul claro (ciano) | Link simbólico |

---

### O Poder do Asterisco `*`

```bash
ls p*        # lista tudo que começa com "p"
ls -l ss*    # lista detalhes de tudo que começa com "ss"
```

> ⚠️ Se o resultado for uma pasta, o Linux abre a pasta e lista o conteúdo interno.

---

### Tabela de Atalhos de Navegação

| Comando    | O que faz                                  |
| ---------- | ------------------------------------------ |
| `TAB TAB`  | Autocomplete — mostra sugestões            |
| `Enter`    | No less/more, desce linha por linha        |
| `Espaço`   | No less/more, pula uma página              |
| `q`        | Sai do modo de visualização                |
| `Ctrl + C` | Cancela qualquer comando (botão de pânico) |

---

### Observações

- **Azul é Pasta:** a cor facilita saber de cara que é diretório e posso dar `cd`.
- **TAB:** uso sempre para confirmar o nome. Se o terminal não completa, errei a letra.
- **Root:** só uso `sudo` quando tenho certeza. O root tem poder total e não faz perguntas.

---

## 09/05/2026 — Territórios e Filtros

### Onde eu mando e onde eu obedeço

- **Raiz (`/`) e Configurações (`/etc`):** tentei criar `arquivo1.txt` e recebi **Permissão negada**. Essas áreas são do sistema (root).
- **Minha Home (`~` ou `/home/kleber`):** meu território. O `touch` funcionou direto.

---

### Filtros Cirúrgicos com Coringas

```bash
ls ?rh*           # ? substitui exatamente 1 caractere em posição fixa
ls arquivo[1-3]*  # pega arquivos com número 1, 2 ou 3 naquela posição
ls arquivo[2,5].txt  # busca especificamente as opções separadas por vírgula
ls arquivo[^3-5]* # ^ exclui — lista tudo menos o que tem números de 3 a 5
```

---

### Tabela de Filtros

| Comando / Filtro | O que faz |
|---|---|
| `sudo` | Execute como administrador (pede senha) |
| `touch` | Cria um arquivo vazio |
| `[1-3]` | Busca um intervalo (do 1 ao 3) |
| `[^3-5]` | Exclui o intervalo (tudo menos do 3 ao 5) |
| `?` | Ocupa o lugar de exatamente um caractere |
| `q` ou `Ctrl + C` | Sai do visualizador ou cancela um comando |

---

### Observações

- **Localização é tudo:** se deu "Permissão negada", primeiro olho onde estou com `pwd`.
- **Filtros:** o segredo para não se perder em pastas como `/etc` é usar o `ls` com filtros.
- **TAB TAB:** melhor amigo para ver o que tem na pasta antes de terminar de digitar.

---

## 01/05/2026 — Localizando Arquivos

### O Poder do Caminho

Não precisa estar "dentro" de uma pasta para saber o que tem nela:

```bash
ls /sys              # espia a pasta sys sem entrar nela
ls /sys/kernel       # vai mais fundo
ls /sys/kernel/p*    # filtra direto na fonte
```

> **Regra de Ouro:** nunca esqueça da `/` no começo. Ela indica que a busca começa do topo do sistema.

---

### O Comando `find`

```bash
find -name arq*          # busca local pelo nome
find -name passwd        # busca no sistema todo (requer estar na raiz)
sudo find -name passwd   # com privilégios para acessar pastas restritas
```

> O `./` na frente do resultado significa "achei aqui dentro de onde você está agora".

> ⚠️ Como usuário comum, o `find` na raiz vai mostrar erros de "Permissão Negada" nas pastas do sistema. Use `sudo find` quando necessário.

---

### Observações

- **Atalho mental:** se sei o caminho, uso `ls`. Se não sei onde está, uso `find`.
- **`./` significa "aqui":** o ponto e a barra confirmam que o arquivo está por perto.

---

## 12/05/2026 — Criando Diretórios e Hierarquia

### A Barreira da Raiz (`/`)

```bash
mkdir /Documentos    # Resultado: Permissão negada
```

A raiz é área do sistema. Usuário comum não cria pastas ali.

---

### Criando no Próprio Território

```bash
cd ~
mkdir Planilhas
cd Planilhas
mkdir Financeiras
touch texto1.txt
touch texto2.txt
```

---

### Criando à Distância (Caminho Absoluto)

```bash
mkdir /home/kleber/Planilhas/Escolares
```

Mesmo estando na raiz (`/`), a pasta foi criada exatamente onde foi mandado. Se souber o caminho completo, cria em qualquer lugar com permissão.

---

### Tabela de Comandos

| Comando | O que faz | Resultado |
|---|---|---|
| `mkdir [nome]` | Cria uma pasta | Cria se não existir |
| `mkdir /caminho/pasta` | Cria uma pasta de longe | Funciona se o caminho estiver correto |
| `cd ..` | Volta um nível | Sai da pasta atual |
| `Ctrl + C` | Botão de pânico | Cancela o que está sendo digitado |

---

### Observações

- **Organização é tudo:** separar `Documentos` de `Planilhas` vai ajudar muito na fase de SQL.
- **Caminho Absoluto economiza tempo:** mais rápido que ficar dando `cd` pra lá e pra cá.
- **Confirmação:** sempre que crio algo, dou `ls` logo depois para confirmar que nasceu mesmo.

---

## 13/05/2026 — Excluindo e Organizando (O Poder do `rm`)

> 📚 **Nota:** iniciada a meta de 4 páginas por dia do livro *Linux Eficiente* do Barrett para ganhar velocidade enquanto sigo a trilha da DIO.

---

### O Perigo do Espaço e o Truque das Aspas

```bash
mkdir Meus Documentos      # cria DUAS pastas separadas: "Meus" e "Documentos"
mkdir 'Meus Documentos'    # correto — cria UMA pasta com espaço no nome
```

Para o Linux, espaço vazio separa comandos. Se o nome tem espaço, as aspas são obrigatórias.

---

### Faxina no Sistema: `rmdir` vs `rm`

```bash
rmdir Planilhas          # só funciona se a pasta estiver VAZIA (segurança)
rm arquivo.txt           # apaga arquivo — sem lixeira, some para sempre
rm arquivo*              # apaga tudo que começa com "arquivo" de uma vez
rm -rf Planilhas/        # apaga pasta com todo o conteúdo dentro
rm -rfv Planilhas/       # mesmo comando mostrando tudo que está sendo apagado
rm -rfvi Planilhas/      # pede confirmação antes de cada item (rede de segurança)
```

> ⚠️ **Botão Nuclear:** `rm -rf` é o comando mais forte. Entra em todas as subpastas e apaga tudo sem perguntar. Não tem volta.

---

### Observações

- **Sempre dar `ls` depois de apagar:** virou tique nervoso. Apago e confirmo se sumiu mesmo.
- **`rmdir` é seguro:** ele não apaga pasta com conteúdo — bom para evitar acidentes.

---

## 16/05/2026 — Obtendo Ajuda e Flags Úteis

### Flags de Visualização

```bash
ls -a         # mostra tudo, inclusive arquivos ocultos (começam com .)
ls -lh        # permissões + tamanho em formato humano (KB, MB, GB)
ls -l         # modo detalhado — primeira letra indica: d=pasta, -=arquivo, l=link
```

---

### Encadeamento de Comandos com `&&`

```bash
mkdir Teste && touch texto1.txt   # o segundo só roda se o primeiro der certo
```

---

### Comandos de Ajuda

```bash
man nome_do_comando    # abre o manual completo (pressione q para sair)
help cd                # para comandos nativos do Bash que não aceitam --help
```

> 🌐 **Referência oficial:** https://help.ubuntu.com/

---

### Fontes de Consulta

- **No terminal:** `man nome_do_comando`
- **Na web:** https://help.ubuntu.com/

---

## 20/05/2026 — Executando Tarefas Administrativas como Root

### Verificando Grupos e Permissões

```bash
cat /etc/group    # lista todos os grupos do sistema
```

Grupos administrativos importantes:
```
adm:x:4:syslog,usuario
sudo:x:27:usuario
```

---

### Teste de Permissões na Raiz

```bash
mkdir Aula              # Resultado: Permissão negada
sudo mkdir Aula         # correto — com privilégios de root
sudo touch texto1.txt   # criando arquivo em pasta do root
sudo rm texto1.txt      # removendo com privilégios
sudo rmdir Aula         # removendo pasta com privilégios
```

---

### Logando como Usuário Root

No Ubuntu, o root vem sem senha definida por padrão. Para definir:

```bash
sudo passwd root    # define a senha do root
su                  # alterna para o superusuário (prompt muda de $ para #)
su nome_usuario     # volta para o usuário comum
exit                # ou Ctrl + D para sair do root
```

> 🔐 **Boas práticas:** após concluir tarefas como root, retorne imediatamente ao usuário comum para evitar modificações acidentais.

---

## 21/05/2026 — Liberando Acesso Remoto do Usuário Root

### Entendendo o Arquivo de Configuração SSH

```bash
cat /etc/ssh/sshd_config    # visualiza as regras de acesso remoto
```

Por padrão a linha vem comentada:
```
#PermitRootLogin prohibit-password
```

Para liberar o acesso do root via SSH:

```bash
sudo nano /etc/ssh/sshd_config
# Alterar para:
PermitRootLogin yes
```

---

### Preparação das Chaves SSH para o Root

```bash
# Copiar chave do usuário padrão para o root
sudo cp /home/usuario_padrao/.ssh/authorized_keys /root/.ssh/authorized_keys

# Editar o arquivo e remover o bloqueio da AWS (texto antes da chave ssh-rsa)
sudo nano /root/.ssh/authorized_keys

# Ajustar permissões (obrigatório para o SSH aceitar)
sudo chmod 600 /root/.ssh/authorized_keys
```

> ⚠️ **Nota AWS:** instâncias EC2 trazem um bloqueio no início do arquivo `authorized_keys`. É necessário apagar esse texto de aviso, deixando apenas o código da chave pública (começa com `ssh-rsa` ou `ssh-ed25519`).

---

### Passo a Passo Completo

```bash
# No servidor
sudo nano /etc/ssh/sshd_config                        # liberar PermitRootLogin yes
sudo systemctl restart sshd                           # reiniciar o serviço SSH
sudo cp /home/usuario/.ssh/authorized_keys /root/.ssh/authorized_keys
sudo nano /root/.ssh/authorized_keys                  # remover bloqueio AWS
sudo chmod 600 /root/.ssh/authorized_keys             # ajustar permissões

# Na máquina local
cd ~/Downloads/
ssh -i SuaChave.pem root@IP_DO_SERVIDOR
```

---

## 22/05/2026 — Trabalhando com Arquivos de Texto

### A Diferença Sutil na Troca de Usuários

```bash
su usuario      # troca o usuário mas mantém o diretório anterior
su - usuario    # troca o usuário E carrega o ambiente do zero (recomendado)
```

> Se após `su usuario` o terminal ficar preso num diretório sem permissão, use `cd ~` para voltar à home pessoal.

---

### Definindo a Senha do Root

```bash
sudo su -       # vira superusuário na sessão atual
passwd root     # define a senha do root
su -            # usa a senha criada para virar root a qualquer momento
```

> ⚠️ As senhas digitadas no terminal do Linux não aparecem na tela — nenhum asterisco ou pontinho. Basta digitar e apertar Enter.

---

### Manipulação de Arquivos de Texto

```bash
cd /
ls -l
mkdir Textos
cd Textos/
```

---

### Editores de Texto no Terminal

```bash
nano arquivo.txt    # editor amigável — padrão adotado no projeto
vi arquivo.txt      # editor clássico baseado em modos
```

**Comandos do `vi`:**

| Comando | O que faz |
|---|---|
| `:q!` | Sai SEM salvar (emergência) |
| `:wq` | Salva e sai |
| `:q` | Sai se não houve modificação |

---

### Visualizando Arquivos com `cat`

```bash
cat arquivo.txt      # lê o conteúdo completo
cat -n arquivo.txt   # lê com linhas numeradas (útil para revisar código e logs)
```

---

## 27/05/2026 — Histórico de Comandos

### Comandos Básicos

```bash
history        # lista todos os comandos usados
history 30     # lista os últimos 30 comandos
history 3      # lista os últimos 3 comandos
```

---

### Executando Comandos do Histórico

```bash
!!          # executa o último comando
sudo !!     # executa o último comando como administrador
!42         # executa o comando de número 42 da lista
!ls         # executa o comando mais recente que começa com "ls"
!?dat?      # executa o comando mais recente que contém "dat"
```

---

### Filtrando o Histórico com Pipe

```bash
history | grep "ls"         # mostra só os comandos com "ls"
history | grep "Planilhas"  # filtra por palavra específica
```

---

### Formatando com Data e Hora

```bash
export HISTTIMEFORMAT="%c "              # mostra data e hora de cada comando
export HISTTIMEFORMAT="%F %T "           # formato: AAAA-MM-DD HH:MM:SS
```

---

### Ativando, Desativando e Limpando

```bash
set +o history    # desativa a gravação temporariamente
set -o history    # reativa a gravação
history -d 42     # exclui o comando de número 42
history -c        # limpa todo o histórico da sessão atual
history -w        # salva o histórico da memória no arquivo físico imediatamente
```

---

### Configuração Permanente (`~/.bashrc`)

```bash
ls -a           # lista arquivos ocultos (como o .bashrc)
cat ~/.bashrc   # visualiza o conteúdo atual
nano ~/.bashrc  # abre para edição manual
```

Variáveis importantes dentro do `.bashrc`:

```bash
HISTSIZE=1000       # comandos mantidos na memória RAM
HISTFILESIZE=2000   # comandos salvos no arquivo físico (.bash_history)
```

Tornando a data/hora permanente:

```bash
echo 'export HISTTIMEFORMAT="%F %T "' >> ~/.bashrc
source ~/.bashrc
```

---
## 02/06/2026 — Criando, Excluindo e Editando Usuários

**Ambiente:** Servidor EC2 na AWS (nuvem) acessado via SSH pelo terminal local (ThinkPad T495)

---

### O que é um usuário no Linux?

Cada pessoa (ou serviço) que usa o servidor tem um usuário próprio. O Linux separa quem pode fazer o quê por usuário. Isso é a base de segurança de qualquer sistema.

---

### Comandos Aprendidos

```bash
# Criar usuário simples
useradd nome_do_usuario

# Criar usuário completo (pasta home, nome e shell)
useradd nome -m -c "Nome Completo" -s /bin/bash

# Criar usuário com prazo de validade
useradd nome -m -c "Descrição" -e DD/MM/AAAA

# Definir ou alterar senha
passwd nome_do_usuario

# Forçar troca de senha no próximo login
passwd nome_do_usuario -e

# Trocar para outro usuário
su nome_do_usuario

# Voltar para root
su

# Deletar usuário e pasta home
userdel -r -f nome_do_usuario

# Alterar informações de usuário existente
usermod nome_do_usuario -s /bin/bash
usermod nome_do_usuario -c "Nova descrição"

# Mudar shell de login
chsh -s /bin/bash nome_do_usuario

# Ver todos os usuários do sistema
cat /etc/passwd
```

> Cada linha do `/etc/passwd` representa 1 usuário no formato:  
> `nome:senha:UID:GID:comentário:pasta_home:shell`

---

### Acesso SSH ao Servidor EC2

```bash
ssh -i chave.pem usuario@IP_DO_SERVIDOR
```

- `-i` → informa o arquivo de chave privada (`.pem`)
- Após conectar, o terminal passa a comandar diretamente o servidor remoto

---

## 02/06/2026 — Shell Script: Criando Usuários em Lote

**Ambiente:** Servidor EC2 na AWS acessado via SSH

---

### Criptografia de Senha no Comando de Criação

```bash
# Método antigo (fraco — não usar em produção)
useradd usuario -p $(openssl passwd -crypt senha123)

# Método atual (SHA-512 — seguro)
useradd usuario -p $(openssl passwd -6 senha123)
```

> `-6` usa o algoritmo SHA-512. Em produção, senhas nunca ficam em texto puro.

---

### `su` com hífen — a diferença importa

```bash
su usuario     # troca de usuário mas mantém o ambiente atual
su - usuario   # troca de usuário E carrega o ambiente dele do zero (use sempre este)
```

---

### Criando o Script em Lote

```bash
mkdir /scripts         # pasta para guardar scripts do sistema
cd /scripts
nano criar_user.sh     # cria e abre o arquivo para editar
```

**Conteúdo do script:**

```bash
#!/bin/bash
echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
passwd guest10 -e

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
passwd guest11 -e

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
passwd guest12 -e

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 senha123)
passwd guest13 -e

echo "Finalizado"
```

```bash
chmod +x criar_user.sh    # dá permissão de execução ao script
./criar_user.sh           # executa o script
```

> Sem o `chmod +x` o Linux não deixa rodar o arquivo.  
> O `./` diz "execute este arquivo aqui nesta pasta".

---

### Descoberta Importante — Erro de Token e Privilégio Root

**O que aconteceu:** ao tentar trocar a senha de um usuário logado como `ubuntu`, o sistema retornou:

```
su: Authentication token manipulation error
```

**Por que aconteceu:** usuário comum não tem permissão de escrever no `/etc/shadow`, onde o Linux guarda as senhas criptografadas.

**A solução:** virar root primeiro com `su`, depois executar o `su usuario`. O root tem acesso irrestrito ao `/etc/shadow`.

**Regra que fica:** sempre que precisar forçar troca de senha de outro usuário, estar como root. Usuário comum não tem esse poder.



## 04/06/2026 - Adicionando Usuários a Grupos e Criando Novos Grupos````

**Ambiente:** Servidor EC2 na AWS acessado via SSH

---

## 📌 O que foi feito
Adição de usuários a grupos existentes, criação de grupos personalizados e gerenciamento de permissões por grupo.

---

## ⚙️ Comandos Aprendidos

### Criar usuário já adicionando a um grupo
```bash
useradd nome -c "Nome Completo" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G NOME_DO_GRUPO
````

> [!NOTE]
> 
> `-G` define o grupo secundário do usuário no momento da criação.

### Adicionar usuário a grupo depois da criação

Bash

```
usermod -G NOME_DO_GRUPO nome_usuario

# Adicionar a múltiplos grupos de uma vez
usermod -G adm,sudo,GRP_VEN mariana
```

> [!WARNING]
> 
> O `-G` substitui os grupos secundários. Se quiser manter os grupos anteriores e só adicionar um novo, use `-aG`.

### Dar superpoderes a um usuário (sudo + adm)

Bash

```
usermod -G adm,sudo nome_usuario
```

### Criar grupos

Bash

```
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_TESTE
```

### Excluir grupos

Bash

```
groupdel GRP_TESTE
```

> [!IMPORTANT]
> 
> O Linux é _case-sensitive_: `GRP_ven` e `GRP_VEN` são grupos diferentes. Mantenha um padrão — no servidor foi usado MAIÚSCULAS.

### Renomear usuário

Bash

```
usermod -l novo_nome Nome_Antigo
```

> A ordem é: primeiro o novo nome, depois o nome atual.

### Remover usuário de um grupo

Bash

```
gpasswd -d nome_usuario nome_grupo
```

### Verificar grupos do sistema

Bash

```
cat /etc/group
```

## 📋 Usuários e Grupos Criados no Servidor

|**Usuário**|**Grupo**|
|---|---|
|rodrigo|GRP_ADM|
|debora|GRP_ADM|
|daniel|GRP_VEN|
|maisa|GRP_VEN|
|joao|GRP_VEN|
|mariana|GRP_VEN + adm + sudo|

## 🔍 Observação Pessoal

O comando `useradd` com `-crypt` não roda no Ubuntu 24. A versão correta é `-6` (SHA-512):

Bash

```
# ❌ Não funciona no Ubuntu 24
useradd nome -p $(openssl passwd -crypt senha123)

# ✅ Correto
useradd nome -p $(openssl passwd -6 senha123)
```

## 📌 Resumo do Pomodoro

- **O que foi estudado hoje:** Criação de grupos e adição de usuários a grupos num servidor Linux real na AWS.
    
- **Por que isso importa na prática:** Separar usuários em grupos é como definir quem acessa o quê no servidor — base do controle de acesso do SaaS.
    
- **1 exemplo do mundo real:** Equipe de vendas no grupo `GRP_VEN` só acessa relatórios de vendas; equipe de ADM no `GRP_ADM` acessa configurações do sistema.


---


## ```
### 05/06/2026  Conhecendo o sistema de permissões


**Ambiente:** Servidor EC2 (AWS) acessado via SSH  
**Foco do Estudo:** Sistema de Permissões Nativo e Gestão de Usuários

---

## 📌 Visão Geral
Estudo prático sobre o gerenciamento de usuários, grupos e o sistema de permissões do Linux (Leitura, Escrita e Execução). Análise de erros comuns de navegação e aplicação do conceito em cenários reais de arquitetura de software (SaaS).

---

## 📊 O Modelo de Permissões do Linux

As permissões são divididas em três categorias de usuários, representadas por triplas de caracteres (`rwx`):

| Tipo | Abreviação | Representação Octal | Função Prática |
| :--- | :---: | :---: | :--- |
| **Read** | `r` | `4` | Ler o conteúdo de um arquivo ou listar um diretório. |
| **Write** | `w` | `2` | Alterar/salvar um arquivo ou criar/apagar itens em uma pasta. |
| **Execute** | `x` | `1` | Rodar um script/programa ou entrar (`cd`) em um diretório. |
| **Nula** | `-` | `0` | Sem nenhuma permissão de acesso. |

### Estrutura de Leitura do Comando `ls -l`
Ao rodar `ls -l /home`, o Linux exibe as permissões detalhadas:

> **`drwxr-x--- 2 mariana mariana 4096 Jun 4 20:08 mariana`**

* **`d`** ➔ Indica que o item é um **d**iretório (se fosse um arquivo, seria **`-`**).
* **`rwx`** (1ª tripla) ➔ Permissões do **Dono** (Leitura, Escrita e Execução).
* **`r-x`** (2ª tripla) ➔ Permissões do **Grupo** (Leitura e Execução).
* **`---`** (3ª tripla) ➔ Permissões dos **Outros/Resto do Mundo** (Nenhum acesso).
* **`mariana`** (1º nome) ➔ Usuário dono do diretório.
* **`mariana`** (2º nome) ➔ Grupo associado ao diretório.

---

## ⚙️ Comandos Práticos Consolidados

### 1. Gestão de Usuários e Grupos
* **Excluir um usuário e apagar sua pasta home:**




  sudo deluser --remove-home nome_do_usuario
``




- **Mudar dono e grupo de um diretório de forma explícita:**
    
    
    
    ```
    sudo chown dono:grupo /caminho/diretorio/
    ```
    

### 2. Manipulação de Permissões (`chmod`)

- **Liberar acesso de leitura e execução para todos nas pastas do `/home`:**
    
    Bash
    
    ```
    sudo chmod 755 /home/*
    ```
    
    _(Nota histórica: No Ubuntu 20.04 ou anterior, as pastas vinham como `755` por padrão. A partir do Ubuntu 21.04+, o padrão de fábrica mudou para `750` (`drwxr-x---`) por motivos de privacidade)._
    

## 🔐 Diagnóstico de Laboratório (O que aconteceu na prática?)

Durante os testes no servidor, foram mapeados os seguintes comportamentos do sistema:

### Caso 1: Erro de `Permission denied` ao navegar

- **Cenário:** O usuário `mariana` tentou dar `cd ubuntu` e o sistema bloqueou.
    
- **Motivo:** A pasta do usuário `ubuntu` estava com a permissão restritiva `drwxr-x---`. Como `mariana` se enquadra na categoria "Outros", ela tinha zero acesso.
    
- **Solução:** Aplicar `sudo chmod 755 /home/*` para permitir que outros usuários listem e entrem nos diretórios.
    

### Caso 2: Erro de `No such file or directory` após trocar de usuário

- **Cenário:** Após rodar `su mariana`, o comando `cd ubuntu` falhou.
    
- **Motivo:** O comando `su` já havia iniciado a sessão da Mariana diretamente dentro da pasta `/home/ubuntu`. Digitar `cd ubuntu` fez o Linux procurar por `/home/ubuntu/ubuntu`, que não existe.
    
- **Solução:** Entender o _prompt_ do terminal; se você já está na pasta, não precisa tentar entrar nela novamente.
    

### Caso 3: Restrição do comando `sudo`

- **Motivo:** O usuário `mariana` não estava listado no arquivo de administradores (`sudoers`). No Linux, apenas contas explicitamente autorizadas podem usar o comando `sudo`.
    

## 🏗️ Estrutura de Diretórios do Cenário de Teste

Foi simulado um ambiente empresarial com dois setores distintos (`/adm` e `/ven`):

| **Diretório** | **Dono** | **Grupo** | **Permissão Textual** | **Permissão Octal** |
| ------------- | -------- | --------- | --------------------- | ------------------- |
| `/adm`        | debora   | GRP_ADM   | `drwxrwxr-x`          | `775`               |
| `/ven`        | mariana  | GRP_VEN   | `drwxrwxr-x`          | `775`               |

- **Resultado do teste de grupo:** O usuário `daniel`, por pertencer ao grupo `GRP_VEN`, conseguiu ler (`cat`) e editar (`nano`) os arquivos dentro de `/ven` criados por `mariana`, validando a eficácia do trabalho em equipe via grupos do Linux.


*Autor: Kleber*  
*Curso: Linux Fundamentals — DIO*  
*Última atualização: 04/06/2026*



