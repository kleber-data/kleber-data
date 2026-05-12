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
    

### Criando Pastas e Arquivos (A Prática)

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