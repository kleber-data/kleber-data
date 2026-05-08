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

# 08/04/2026: Dominando os Caminhos no Linux

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
    

### O Poder do Asterisco * (Filtro Coringa)

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