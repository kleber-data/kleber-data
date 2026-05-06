06/05/2026

No curso de Linux Fundamentos o professor está usando uma VM para Linux Ubuntu, eu estou no Linux Ubuntu nativo.

Vou replicar no Linux Ubuntu nativo os principais princípios de manipulação de arquivos sem a necessidade de uma VM.

Serão apresentados comandos para copiar arquivos, apagar arquivos, criar diretórios, navegar pelo sistema de arquivos e etc, tudo será feito via comando. Todo comando só é executado após apertar a tecla Enter.

Se atentar a letras maiúsculas e minúsculas pois o sistema operacional Linux é bem rigoroso quanto a isso, se você digitar o comando "Date" ele não reconhece, o certo é "date".

---

###  Navegando Pelo Sistema de Arquivos

A navegação dentro de um sistema Linux é diferente do Windows. Antes de começar qualquer atividade via terminal é estritamente necessário você saber onde está, a melhor forma é usando o comando `pwd`, sempre se atentando na forma de digitação.

Após isso você decide em qual pasta vai trabalhar usando o comando `cd` (change directory), isso pode te levar até a pasta raiz do sistema dependendo do caminho informado.

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