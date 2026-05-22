### 06/05/2026 - Introdução

No curso de Linux Fundamentos o professor está usando uma VM para Linux Ubuntu, eu estou no Linux Ubuntu nativo.

Vou replicar no Linux Ubuntu nativo os principais princípios de manipulação de arquivos sem a necessidade de uma VM.

Serão apresentados comandos para copiar arquivos, apagar arquivos, criar diretórios, navegar pelo sistema de arquivos e etc, tudo será feito via comando. Todo comando só é executado após apertar a tecla Enter.

Se atentar a letras maiúsculas e minúsculas pois o sistema operacional Linux é bem rigoroso quanto a isso, se você digitar o comando "Date" ele não reconhece, o certo é "date".

---

###  Navegando Pelo Sistema de Arquivos

A navegação dentro de um sistema Linux é diferente do Windows. Antes de começar qualquer atividade via terminal é estritamente necessário você saber onde está, a melhor forma é usando o comando `pwd`, sempre se atentando na forma de digitação.

Após isso você decide em qual pasta vai trabalhar usando o comando `cd` (change Directory), isso pode te levar até a pasta raiz do sistema dependendo do caminho informado.

```
user@linux-machine:~$ pwd/home/user
```

```
user@linux-machine:~$ cd /
```

```
user@linux-machine:/$ pwd/
```

---

###  Observações pessoais

O mundo do Linux é completamente diferente do Windows, você sente que está no controle total da máquina. Começar a utilizar o terminal vai ser um desafio, mas ao mesmo tempo algo realmente satisfatório.

Exemplo:

- no começo confundi bastante os caminhos
- usar `pwd` antes ajuda muito a não se perder
- ninguém nasce sabendo, a prática diária eleva seu conhecimento
  
  ### 07/05/2026 – Dominando os Caminhos no Linux

- **Navegando pelo sistema de arquivos**

No Windows a gente trabalha clicando em pastas, mas no servidor Linux o caminho é indicado pelo terminal e a gente precisa ser o guia.

- **A Raiz é o topo:** O comando `cd /` te joga lá no começo de tudo. No Linux, não tem "Disco C:", tudo nasce do `/`.
    
- **Localização é tudo:** Antes de qualquer coisa, uso o `pwd` para ter certeza de onde estou. O terminal não te deixa na mão, mas você tem que perguntar.
    
- **Caminho Absoluto vs Relativo:**
    
    - Se eu quero ir direto para os logs, mando um `cd /var/log` (caminho completo).
        
    - Se eu já estou dentro de `/var`, não preciso da barra, basta digitar `cd log` (caminho relativo).
        
- **A arte de voltar:** O comando `cd ..` é o nosso botão de "voltar" do navegador. E o comando `cd ../pasta` é o atalho mestre para sair de uma sala e já entrar na outra sem perder tempo.
    

No começo os caminhos confundem, mas usar o `pwd` toda hora ajuda a não se perder no sistema nativo.

# 08/05/2026: Dominando os Caminhos no Linux

### Manutenção do Sistema

Estes comandos mantêm o sistema atualizado e limpo:

- **sudo apt update**: Atualiza a lista de pacotes.
    
- **sudo apt upgrade -y**: Instala as atualizações.
    
- **sudo apt autoremove**: Remove dependências antigas que não são mais usadas.
    
- **sudo apt autoclean**: Limpa o cache de pacotes para ganhar espaço.
    

### Quem realmente manda no Linux

O administrador absoluto do sistema é o **root**. Mesmo você sendo o dono físico do notebook, seu usuário normal não roda como root o tempo inteiro. Isso evita:

- Apagar arquivos críticos sem querer.
    
- Vírus terem acesso total.
    
- Programas modificarem o sistema inteiro.
    
- Danos acidentais.
    

### O papel do sudo

Quando você usa o comando **sudo**, você está dizendo: "execute isso como administrador" (superuser do). É por isso que ele pede senha.

- **Teste prático**: Se você tentar dar um `ls` em uma pasta restrita e não funcionar, tente `sudo ls /etc/sssd`.
    

### Filtrando a exibição de arquivos

**O Problema da "Lista Infinita"**

Dependendo do diretório que você entra no sistema Linux (como `/etc` ou `/var`), você pode se deparar com milhares de arquivos. Buscar um arquivo específico manualmente é trabalhoso demais. O ideal é filtrar esses arquivos.

**O Cenário de Servidor**

Em servidores sem interface gráfica, usamos o atalho da barra reta ( | ), o famoso **Pipe**.

### Comandos de Navegação e Atalhos

**1. ls | more (O básico)**

- **Enter**: Vai descendo a lista linha por linha.
    
- **Espaço**: Muda de página (tela cheia).
    
- **Sair**: Aperte **q**.
    

**2. ls | less (O avançado - recomendado)**

- **Setas (Cima/Baixo)**: Sobe ou desce a lista com total controle.
    
- **Enter**: Desce linha por linha.
    
- **Espaço**: Pula para a próxima página.
    
- **Busca**: Aperte **/** e digite o nome do que procura.
    
- **Sair**: Aperte **q**.
    

### Como encerrar ou sair

Se você travou em um visualizador ou o comando está demorando demais:

- **q**: Atalho padrão para sair do `less` ou `more`.
    
- **Ctrl + C**: O "botão de pânico" do Linux. Força o encerramento de qualquer processo.
    

### Conceito Chave: O Pipe (|)

O Pipe funciona como um cano: ele pega o resultado de um comando e joga para dentro de outro. Isso é a base para análise de logs e automação em Engenharia de Dados.

### Identificação Visual de Arquivos e Diretórios

No Linux, o terminal usa sinais visuais para você não precisar adivinhar o que está fazendo:

- **Com / no final**: É um Diretório (Pasta).
    
- **Sem / no final**: É um Arquivo.
    
- **Cores no Ubuntu**: Por padrão, **Diretório fica em azul** e **Arquivo fica em branco/cinza**.
    

### O Poder do Asterisco * 

O asterisco é o comando "mostre tudo que comece com...".

- **Comando**: `ls p*`
    
- **Tradução**: "Mostre para mim tudo que comece com **p** e ignore o resto (*)."
    
- **Comportamento**: Se for um arquivo, lista o nome. Se for um diretório, ele lista o conteúdo que está dentro dessa pasta.
    

### Tabela de Atalhos de Navegação e Filtros

|**Comando**|**O que faz / Atalho**|
|---|---|
|**ls p***|Filtra tudo que começa com "p". Se for pasta, mostra o conteúdo.|
|**ls -l ss***|Lista detalhes de permissão de tudo que começa com "ss".|
|**TAB TAB**|Auto complete: Mostra as sugestões. Pastas vêm com /.|
|**Enter**|No less/more, desce linha por linha.|
|**Espaço**|No less/more, pula uma página inteira.|
|**q**|Sai do modo de visualização.|
|**Ctrl + C**|Cancela qualquer comando (Botão de pânico).|

### Minhas Observações.

- **Azul é Pasta**: A cor azul facilita demais, já sei de cara que é diretório e posso dar `cd`.
    
- **Cuidado com o ls p***: Lembrar que ele abre a "caixa" da pasta e mostra o que tem dentro.
    
- **TAB**: Sempre uso para confirmar o nome. Se o terminal não completa, é porque eu errei a letra (lembrar do case-sensitive).
    
- **Poder do Root**: Só uso `sudo` quando tenho certeza. O root tem poder total e não faz perguntas.

### 09/25/2026 - Territórios e Filtros

### Onde eu mando e onde eu obedeço

Testei criar arquivos com o comando `touch` em lugares diferentes e entendi a hierarquia do sistema:

- **Raiz (`/`) e Configurações (`/etc`):** Tentei criar o `arquivo1.txt` e recebi **Permissão negada**. Essas áreas são do sistema (root) e só aceitam mudanças com `sudo`.
    
- **Minha Home (`~` ou `/home/kleber`):** É o meu território. Aqui o `touch` funcionou direto e criei vários arquivos para testes.
    

### Filtros Cirúrgicos com Coringas

Aprendi a usar o `?` e o `[]` para não ter que listar 5 mil arquivos de uma vez.

**1. O Ponto de Interrogação (`?`)**

Serve para quando você sabe a posição exata de uma letra:

- **ls ?rh*** ou **ls ?sh***: Busca arquivos que tenham qualquer letra na 1ª posição, mas que a 2ª e 3ª sejam fixas.
    

**2. O Uso de Colchetes (`[ ]`)**

É a busca por conjunto ou intervalo:

- **ls arquivo[1-3]***: Pega os arquivos que tenham o número 1, 2 ou 3 naquela posição.
    
- **ls arquivo[2,5].txt**: Busca especificamente as opções separadas por vírgula.
    
- **ls arquivo[^3-5]***: O acento circunflexo (`^`) serve para **excluir**. Aqui, ele listou tudo, menos o que tinha os números de 3 a 5.
    

### Identificação Visual 

- **Azul com `/` no final:** É um diretório (pasta).
    
- **Branco/Cinza sem `/`:** É um arquivo.
    
- **Comportamento do `*`:** Se eu usar `ls p*` e houver uma pasta começando com "p", o Linux vai abrir essa pasta e listar o que tem dentro dela.
    

---

### Tabela Geral de Comandos e Filtros

|**Comando / Filtro**|**O que faz / Tradução**|
|---|---|
|**sudo**|"Execute como administrador" (pede senha).|
|**touch**|Cria um arquivo vazio (funciona na Home).|
|**[1-3]**|Busca um intervalo (do 1 ao 3).|
|**[^3-5]**|Exclui o intervalo (tudo, menos do 3 ao 5).|
|**?**|Ocupa o lugar de exatamente um caractere.|
|**q** ou **Ctrl + C**|Para sair do visualizador ou cancelar um comando travado.|

---

### Minhas Observações 

- **Localização é tudo:** Se deu "Permissão negada", primeiro olho onde estou com o `pwd`. Se não for minha pasta pessoal, preciso de `sudo`.
    
- **Filtros:** O segredo para não se perder em pastas como `/etc` é usar o `ls` com filtros (`*`, `?` ou `[]`). Isso limpa a visão e mostra só o que interessa.
    
- **TAB TAB:** É meu melhor amigo para ver o que tem na pasta antes de terminar de digitar o comando.

# 1/05/2026: Localizando Arquivos 

### O Poder do Caminho 

Uma coisa que ficou clara hoje: você não precisa estar "dentro" de uma pasta para saber o que tem nela. É como usar um binóculo. Se você está na **Raiz ( / )** e quer dar uma espiada na pasta `sys`, não precisa dar `cd`.

- Basta usar: **ls /sys**
    
- Quer ir mais fundo? **ls /sys/kernel**
    

> **Regra de Ouro:** Nunca esqueça da `/` no começo. Ela indica que você está começando a busca lá do topo do sistema.

### Filtrando direto na fonte

Dá para usar os filtros que a gente aprendeu ontem mesmo estando longe da pasta. Se eu quero ver tudo que começa com **"p"** dentro da pasta kernel, eu mando:

- **ls /sys/kernel/p*** Isso me economiza o tempo de entrar na pasta, rodar o comando e depois ter que sair. O `*` faz o trabalho sujo de aceitar qualquer continuação depois do "p".
    

### Quando você está "perdido": O comando Find

Às vezes você sabe o nome do arquivo, mas não tem a mínima ideia de onde ele se enfiou. É aí que entra o **find**.

1. **Busca Local:** Se eu estou na `/home` e quero achar algo que começa com "arq", eu uso:
    
    - **find -name arq***
        
    - O terminal vai me mostrar um `./` na frente do resultado. Isso é o Linux dizendo: "Achei aqui dentro de onde você está agora".
        
2. **Busca no Sistema Todo:** Se eu for para a raiz (`cd /`) e mandar um `find -name passwd`, ele vai revirar o computador inteiro.
    

### O "X" da questão: Permissão Negada no Find

Uma coisa importante que notei: quando você faz uma busca na Raiz como usuário comum, o terminal começa a cuspir um monte de erros de "Permissão Negada".

- **Por que?** Porque o `find` tenta entrar em pastas que só o **Superusuário (root)** tem a chave. Como você não está como root, o Linux barra a entrada do comando em diretórios críticos do sistema.
    

---

### Minhas Observações 

- **Atalho Mental:** Se eu sei o caminho, uso `ls`. Se eu não sei onde está, uso `find`.
    
- **./ significa "aqui":** Sempre que o `find` mostra o ponto e a barra, ele está me confirmando que o arquivo está por perto.
    
- **Sudo no Find:** Se eu precisar mesmo achar um arquivo de sistema e o `find` estiver sendo barrado, vou ter que apelar para o `sudo find`.


###  12/05/2026: Criando Diretórios e Hierarquia

### A Barreira da Raiz (`/`)

Comecei tentando criar uma pasta `Documentos` lá na raiz do sistema (`mkdir /Documentos`).

- **O que aconteceu:** O Linux me deu um sonoro **"Permissão negada"**.
    
- **A lição:** A raiz (`/`) é área do sistema. Usuário comum não cria pastas ali. É por isso que o Linux é seguro: ninguém bagunça a estrutura principal por acidente.
    

### O Meu Território (`~`)

Voltei para a minha pasta pessoal (`cd ~` ou `/home/kleber`).

- Tentei criar a pasta `Documentos`, mas o Linux avisou: **"Arquivo existe"**.
    
- **A lição:** O Linux não deixa criar dois itens com o mesmo nome no mesmo lugar. Como a pasta já existia (padrão do sistema), eu apenas entrei nela e comecei a trabalhar.
    

### Criando Pastas e Arquivos 

1. **Organização Interna:** Entrei em `Documentos` e usei o `touch` para criar os arquivos `texto1.txt` e `texto2.txt`. Funcionou liso porque ali eu tenho permissão total.
    
2. **Novas Estruturas:** Criei uma pasta chamada `Planilhas` do zero. Dentro dela, criei a subpasta `Financeiras`.
    

### Criando à Distância 

Essa foi a parte mais legal da aula: eu estava lá na raiz (`cd /`) e, em vez de viajar pasta por pasta, dei um comando certeiro:

- **Comando:** `mkdir /home/kleber/Planilhas/Escolares`
    
- **O resultado:** Mesmo estando "longe", a pasta foi criada exatamente onde eu mandei.
    
- **A lição:** Se você souber o caminho completo (caminho absoluto), você pode criar coisas em qualquer lugar que tenha permissão, sem precisar sair de onde está.
    

---

### Tabela de Comandos da Aula

|**Comando**|**O que eu fiz**|**Resultado**|
|---|---|---|
|**mkdir [nome]**|Tentei criar uma pasta.|Cria a pasta se ela não existir.|
|**mkdir /caminho/pasta**|Criei uma pasta de longe.|Funciona se o caminho estiver correto.|
|**cd ..**|Voltei um nível.|Saí de `Documentos` e voltei para `~`.|
|**Ctrl + C**|O "pânico".|Usei para cancelar o que estava digitando e limpar a linha.|

---

### Minhas Observações 

- **Organização é tudo:** Já comecei a separar `Documentos` de `Planilhas`. Isso vai me ajudar muito quando eu entrar na fase de SQL e Excel da trilha.
    
- **Caminho Absoluto economiza tempo:** No dia a dia, é muito mais rápido digitar o caminho completo do que ficar dando `cd` pra lá e pra cá.
    
- **Confirmação:** Sempre que eu crio algo (`mkdir` ou `touch`), eu dou um `ls` logo em seguida para ter certeza de que o arquivo nasceu mesmo.


# 13/05/2026: Excluindo e Organizando (O Poder do RM)

**Nota Mental:** Comecei hoje a meta das 4 páginas por dia do livro _Linux Eficiente_ do Barrett. Vou usar o livro para ganhar velocidade ("eficiência") enquanto sigo a trilha da DIO.

### 1. O Perigo do Espaço e o Truque das Aspas

Hoje aprendi que o Linux é literal demais. Tentei criar a pasta `Meus Documentos` sem aspas e ele criou duas pastas separadas: `Meus` e `Documentos`.

- **Como resolvi:** Usei aspas simples: `mkdir 'Meus Documentos'`.
    
- **A lição:** Para o Linux, um espaço vazio separa comandos. Se o nome do arquivo tem espaço, as aspas são obrigatórias.
    

### 2. Faxina no Sistema: `rmdir` vs `rm`

Entendi a diferença entre apagar uma "caixa" e apagar o "conteúdo":

- **`rmdir`:** Só funciona se a pasta estiver **vazia**. É um comando de segurança. Tentei apagar a pasta `Planilhas` com coisas dentro e ele me deu um erro — o que é bom para não fazer besteira.
    
- **`rm`:** Usei para apagar os arquivos `.txt`. **Atenção total aqui:** No Linux não tem lixeira. Deu `rm`, o arquivo some para sempre.
    

### 3. Produtividade com Curingas (`*`)

Em vez de apagar um por um, usei o `rm arquivo*`.

- O asterisco funciona como um "completa pra mim". Ele pegou tudo que começava com "arquivo" e limpou de uma vez. Economizei tempo e teclas.
    

### 4. O Comando "Pau para toda obra": `rm -rf`

Este é o comando mais forte que usei até agora.

- O `-r` (recursivo) entra nas pastas e subpastas.
    
- O `-f` (force) apaga sem perguntar nada.
    
- **Teste real:** Criei uma estrutura complexa dentro de `Planilhas` (`adm`, `vend`, arquivos txt) e apaguei tudo de uma vez com `rm -rf Planilhas/`. É rápido, mas dá um frio na barriga porque não tem volta.
    

---

### Comandos que usei hoje:

- `mkdir 'Nome Com Espaço'`: Criar pastas com nomes compostos.
    
- `rmdir`: Apagar pastas vazias.
    
- `rm`: Apagar arquivos.
    
- `rm -rf`: Apagar pastas com conteúdo (limpeza total).
    
- `rm arquivo*`: Apagar vários arquivos por padrão de nome.
    

### Minhas Observações :

- **Sempre dar `ls` depois de apagar:** Virou meu tique nervoso. Apago e dou `ls` para confirmar se o "inimigo" sumiu mesmo.
    
- **Caminho Absoluto vs Relativo:** Usei o `cd ~` para garantir que estava na minha home antes de começar a bagunça.


### 16/05/2026 Obtendo Ajuda

## O Significado das Cores no `cd /`

O comando `ls` usa cores automáticas para ajudar a identificar a estrutura do sistema rapidamente, sem precisar rodar o modo detalhado toda hora:

- **Branco:** Arquivos comuns/regulares (scripts Python, textos, etc.).
    
- **Azul Escuro:** Diretórios (pastas).
    
- **Azul Claro (Ciano):** Links simbólicos (atalhos que apontam para outro local).
    

---

##  Entendendo a Estrutura de Arquivos (`ls -l`)

A primeira letra da linha de permissões no modo de lista longa (`-l`) entrega a identidade do item:

- `d` $\rightarrow$ **Diretório** (Pasta).
    
- `-` $\rightarrow$ **Arquivo comum**.
    
- `l` $\rightarrow$ **Link/Redirecionamento**.
    

---

##  Comandos Praticados & Flags Úteis

### 1. Visualização (`ls`)

- `ls -a`: Mostra absolutamente tudo, inclusive arquivos ocultos (os que começam com `.`).
    
- `ls -lh`: Mostra permissões, donos e o tamanho dos arquivos em formato humano (`h`), facilitando ler se são KB, MB ou GB.
    

### 2. Remoção Segura (`rm`)

- `rm -rfv`: Deleta pastas e arquivos à força (`f`), de forma recursiva (`r`) e mostrando na tela o passo a passo de tudo o que está sendo apagado (`v` de verbose).
    
- `rm -rfvi`: **A rede de segurança.** O parâmetro `i` (interativo) faz o terminal perguntar se você tem certeza antes de deletar cada item. _Essencial para evitar desastres em servidores._
    

---

##  Hacks de Produtividade do Terminal

### Encadeamento de Comandos com `&&`

É possível rodar dois ou mais comandos na mesma linha para economizar tempo. O segundo só executa se o primeiro der certo:

Bash

```
mkdir Teste && touch texto1.txt
```

### Comandos sem `--help`

Nem todo comando aceita a flag `--help` clássica.

- O `clear` (limpeza de tela) não tem documentação extensa por ser simples demais.
    
- Comandos nativos do interpretador Bash (como o `cd`) exigem o comando `help` antes deles:
    

Bash

```
help cd
```

---

###  Fontes de Consulta Oficiais

- **No Terminal:** `man nome_do_comando` (Abre o manual completo. Pressione `q` para sair).
    
- **Na Web:** [Site Oficial de Ajuda do Ubuntu](https://help.ubuntu.com/)

### 20/05/2026 - Executando Tarefas Administrativas como Root

No Linux, a estrutura de arquivos raiz (`/`) é protegida. Usuários comuns não possuem permissão para criar, modificar ou deletar arquivos e diretórios diretamente na raiz do sistema sem privilégios administrativos.

Para listar todos os grupos do sistema e verificar quais usuários possuem privilégios de administrador (estão no grupo `sudo` ou `adm`):

Bash

```
cd /
cat /etc/group
```

### Exemplo de saídas de grupos administrativos:

Plaintext

```
adm:x:4:syslog,usuario
sudo:x:27:usuario
```

### Teste de Permissões na Raiz (`/`)

Ao tentar criar um diretório na raiz sem elevação de privilégios, o sistema nega a permissão:

Bash

```
usuario@maquina:/$ mkdir Aula
mkdir: não foi possível criar o diretório ‘Aula’: Permissão negada
```

**Correção:** É necessário utilizar o comando `sudo` antes da ação.

Bash

```
usuario@maquina:/$ sudo mkdir Aula
```

### Manipulação de Arquivos dentro de Diretórios Protegidos

Ao entrar em um diretório criado pelo `root` e tentar gerar um arquivo com o comando `touch`:

Bash

```
usuario@maquina:/Aula$ touch texto1.txt
touch: não foi possível tocar 'texto1.txt': Permissão negada
```

**Correção:** Utilizar o `sudo` para criar o arquivo.

Bash

```
usuario@maquina:/Aula$ sudo touch texto1.txt
```

Verificando as permissões do arquivo criado (`ls -l`):

Plaintext

```
total 0
-rw-r--r-- 1 root root 0 mai 20 18:42 texto1.txt
```

_O arquivo pertence ao usuário root e ao grupo root._

Ao tentar remover o arquivo ou a pasta como usuário comum, o sistema impede a exclusão:

Bash

```
usuario@maquina:/Aula$ rm texto1.txt
rm: remover arquivo comum vazio 'texto1.txt' protegido contra escrita? s
rm: não foi possível remover 'texto1.txt': Permissão negada

usuario@maquina:/$ rmdir Aula
rmdir: falhou em remover 'Aula': Permissão negada
```

**Correção:** Executar as remoções utilizando privilégios administrativos:

Bash

```
usuario@maquina:/Aula$ sudo rm texto1.txt
usuario@maquina:/$ sudo rmdir Aula
```

---

## Logando como Usuário Root

Em cenários específicos (como a configuração complexa de um servidor web), colocar o comando `sudo` e digitar a senha repetidamente pode ser contraproducente. Nesses casos, pode-se alternar diretamente para o superusuário (`root`).

No Ubuntu, por padrão, o usuário `root` vem sem uma senha definida para login direto. É necessário definir uma senha primeiro:

Bash

```
usuario@maquina:~$ sudo passwd root
[sudo] senha para usuario: 
Nova senha: 
Redigite a nova senha: 
passwd: senha atualizada com sucesso
```

Para mudar o terminal para o contexto de superusuário, utiliza-se o comando **`su`** (substitute user):

Bash

```
usuario@maquina:~$ su
Senha: 
root@maquina:/home/usuario# 
```

_Note que o prompt muda o caractere final de `$` (usuário comum) para `#` (root)._

Estando como `root`, todas as tarefas administrativas são executadas sem a necessidade de prefixar com `sudo`:

Bash

```
root@maquina:/# mkdir Teste
root@maquina:/# ls -l
root@maquina:/# rmdir Teste
```

⚠️ **Boas Práticas de Segurança:** Após concluir as tarefas administrativas necessárias como superusuário, retorne imediatamente para o usuário convencional para evitar modificações acidentais no sistema.

Para retornar ao usuário padrão:

Bash

```
su nome_do_usuario
```

_(Ou simplesmente digite `exit` ou pressione `Ctrl + D`)_


### 21/05/2026 Liberando acesso remoto do usuário root
```
# Resumo: Configuração de Acesso Remoto para o Root

Nas imagens oficiais do Ubuntu (especialmente em ambientes de nuvem como a AWS), além de liberar o `PermitRootLogin yes` no arquivo de configuração do SSH, são necessários ajustes adicionais nas chaves de autenticação e no bloqueio de segurança nativo da nuvem.

## Entendendo o Arquivo de Configuração
O arquivo responsável por ditar as regras do acesso remoto via SSH fica localizado em `/etc/ssh/sshd_config`. 

* Para visualizar o conteúdo do arquivo, utiliza-se o comando:
  ```bash
  cat /etc/ssh/sshd_config
```

- Por padrão, a linha que gerencia o acesso do root vem comentada e configurada assim:
    
    Plaintext
    
    ```
    #PermitRootLogin prohibit-password
    ```
    
    _(O símbolo `#` significa que a linha está comentada/desativada e o `prohibit-password` impede o login direto usando senha)._
    

## Editando a Configuração

Para aplicar as alterações, é necessário usar um editor de texto no terminal. Na aula, foi utilizado o **nano**.

- Comando para abrir o arquivo em modo de edição:
    
    Bash
    
    ```
    sudo nano /etc/ssh/sshd_config
    ```
    
- **Alteração realizada:** Foi removido o `#` (descomentando a linha) e o texto foi alterado para `yes`. O resultado final deve ser exatamente:
    
    Plaintext
    
    ```
    PermitRootLogin yes
    ```
    

## Preparação das Chaves SSH para o Root

Mesmo liberando o acesso no serviço, o usuário `root` precisa ter as chaves públicas autorizadas para permitir a conexão via par de chaves (`.pem`).

- **Copiando as chaves do usuário padrão para o root:** Como a chave privada do administrador já estava configurada no usuário padrão, faz-se a cópia desse arquivo para o diretório do root:
    
    Bash
    
    ```
    sudo cp /home/usuario_padrao/.ssh/authorized_keys /root/.ssh/authorized_keys
    ```
    
- **Editando e limpando as chaves (Ajuste AWS):** Ao abrir o arquivo com o nano:
    
    Bash
    
    ```
    sudo nano /root/.ssh/authorized_keys
    ```
    
    > [!IMPORTANT] Nota de Segurança (AWS) As instâncias AWS trazem um bloqueio no início desse arquivo (geralmente um comando como `no-port-forwarding,no-agent-forwarding... Please login as the user...`). **É necessário apagar todo esse texto de aviso inicial**, deixando apenas o código puro da chave pública (que começa com `ssh-rsa` ou `ssh-ed25519`). Se não apagar, o servidor derruba a conexão.
    
- **Ajustando as Permissões do Arquivo:** O SSH exige que o arquivo de chaves tenha permissões restritas para segurança. Define-se a permissão correta (leitura e escrita apenas para o dono) com o comando:
    
    Bash
    
    ```
    sudo chmod 600 /root/.ssh/authorized_keys
    ```
    

## Passo a Passo do Fluxo de Trabalho

### No Servidor (Máquina Virtual):

Bash

```
# 1. Abra o arquivo de configuração do SSH
sudo nano /etc/ssh/sshd_config
# [Altere para 'PermitRootLogin yes', salve e saia]

# 2. Reinicie o serviço SSH usando privilégios elevados (sudo) para aplicar a mudança
sudo systemctl restart sshd

# 3. Copie a chave pública autorizada do usuário comum para o perfil do root
sudo cp /home/usuario_padrao/.ssh/authorized_keys /root/.ssh/authorized_keys

# 4. Abra o arquivo de chaves do root e remova a trava da AWS que bloqueia o root
sudo nano /root/.ssh/authorized_keys
# [Apague o texto de aviso inicial da AWS, deixando apenas a chave, salve e saia]

# 5. Garanta que apenas o root tenha permissão de ler/escrever nesse arquivo
sudo chmod 600 /root/.ssh/authorized_keys
```

### Na Máquina Local (Terminal):

Bash

```
# 1. Navegue até a pasta onde a sua chave privada (.pem) está salva
cd ~/Downloads/

# 2. Conecte-se diretamente como root utilizando a chave privada
ssh -i SuaChave.pem root@IP_DA_SUA_VM
```



### 22/05/2026 - Trabalhando com arquivos de texto

```
No Linux, a premissa fundamental é que **toda a configuração do sistema é feita através de arquivos do tipo texto**. Para interagir com o ecossistema e evoluir no desenvolvimento do SaaS, o domínio da navegação entre usuários e edição de arquivos é indispensável.

---

## 👥 1. Engenharia de Usuários e Gestão de Sessões

Após optar pelo modelo de conexão mais seguro (logar com usuário padrão via SSH e alternar internamente), o comportamento do terminal ao trocar de identidades exige atenção à localização dos diretórios.

### 🔄 A Diferença Sutil na Troca de Usuários
* **Troca Simples (`su usuario`):** Altera a identidade do usuário, mas mantém o terminal preso no diretório de trabalho anterior.
  * *Exemplo prático:* Ao sair do `root` para o usuário comum usando apenas `su usuario`, o terminal continua na pasta `/root` (onde o usuário comum não tem permissão de leitura/escrita). Para corrigir, usa-se o comando `cd ~` para voltar à Home pessoal.
* **Troca com Ambiente Limpo (`su - usuario`):** Altera o usuário e muda automaticamente para a pasta pessoal dele (`/home/usuario`), aplicando o login do zero de forma organizada.

---

## 🔑 2. Passo a Passo: Definindo a Senha do Root

Por padrão, imagens de nuvem vêm com o usuário administrador (`root`) bloqueado para senhas. Para definir uma senha interna:

1. Vire superusuário na sessão atual:
   ```bash
   sudo su -
```

2. Execute o utilitário de alteração de senha:
    
    Bash
    
    ```
    passwd root
    ```
    
3. Digite e confirme a nova senha.
    

> ⚠️ **Nota de Segurança:** Quando você digita senhas no terminal do Linux, os caracteres não aparecem na tela (não mostra asteriscos `***` nem pontinhos). Basta digitar às cegas e apertar Enter.

### 🔄 Como usar a senha criada?

Em qualquer ponto do sistema, para virar root sem o comando `sudo`, basta usar:

Bash

```
su -
```

O sistema solicitará a _Password_ criada. O prompt mudará de `$` (usuário comum) para `#` (root).

> 🚨 **Importante (Bloqueio AWS):** A criação desta senha funciona **apenas internamente**. O acesso SSH externo via internet direto para o root continua bloqueado no arquivo `/etc/ssh/sshd_config`, mantendo a integridade da máquina virtual contra ataques externos.

## 📁 3. Manipulação do Sistema de Arquivos

Abaixo está o fluxo de comandos executados na raiz do sistema para criação de diretórios e manipulação de arquivos de texto:

Bash

```
# Navegar até o diretório raiz do Linux
cd /

# Listar os diretórios do sistema (raiz) detalhadamente
ls -l

# Criar uma nova pasta/diretório (requer privilégios de root)
mkdir Textos

# Acessar a pasta criada
cd Textos/
```

## 📝 4. Editores de Texto e Visualizadores

Para editar arquivos de configuração ou códigos no terminal, utilizam-se editores em modo texto.

### ⌨️ O Editor `vi` (ou `vim`)

O `vi` funciona baseado em modos. Para interagir com ele, use os comandos abaixo sempre pressionando a tecla `Esc` antes:

- **`:q!`** -> Sair **SEM** salvar as alterações (Botão de emergência se algo for digitado errado).
    
- **`:wq`** -> Salvar as alterações (_write_) e sair (_quit_).
    
- **`:q`** -> Sair direto (Funciona apenas se o arquivo não tiver sido modificado).
    

> 💡 **Nota de Curso:** O `nano` é um editor de texto muito mais amigável para o fluxo diário e será o padrão adotado durante o desenvolvimento do projeto.

### 👁️ Visualização Rápida com o `cat`

O comando `cat` permite ler todo o conteúdo de um arquivo de texto diretamente no terminal, sem a necessidade de abri-lo em um editor. É um comando seguro de modo apenas leitura.

- **Visualização padrão:**
    
    Bash
    
    ```
    cat leia-me.txt
    ```
    
- **Visualização com linhas numeradas:** (Excelente para revisar linhas de código Python ou logs de erro de bancos de dados SQL):
    
    Bash
    
    ```
    cat -n leia-me.txt
    ```
    

_Resultado no terminal:_

Plaintext

```
     1	Esse é o meu texto!!!
```