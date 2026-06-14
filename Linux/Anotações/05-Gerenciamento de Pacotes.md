# 🐧 Linux — Gerenciamento de Pacotes

## 14/06/2026 — Gerenciamento de Pacotes Linux

**Autor:** Kleber  
**Curso:** Linux Fundamentals — DIO  
**Tags:** #linux #dio #pacotes #apt #terminal

---

## 📌 O que é um Pacote?

Um pacote no Linux é um arquivo que contém um software ou atualização pronto para ser instalado no sistema. Exemplos de uso:

- Instalar um software novo
- Atualizar um software existente
- Remover um software que não é mais necessário

> 💡 No Windows o sistema geralmente atualiza sozinho. No Linux você executa os comandos manualmente — você tem controle total do que entra e sai do sistema.

---

## 🐧 Diferença entre Distribuições

|Distribuição|Gerenciador de Pacotes|
|---|---|
|Debian / Ubuntu|`apt` / `apt-get`|
|Red Hat / Fedora / CentOS|`yum` / `dnf`|
|Arch Linux|`pacman`|

> Os comandos desta aula são válidos para **Debian e Ubuntu** — mesma base, mesmos comandos.

---

## ⚙️ O Comando `apt-get`

Interface de linha de comando para obter, instalar, atualizar e remover pacotes junto com suas dependências, a partir de fontes autenticadas.

**Sintaxe:**

bash

```bash
apt-get [opções] comando
apt-get [opções] install|remove pacote1 [pacote2 ...]
```

### Comandos principais do `apt-get`

|Comando|O que faz|
|---|---|
|`apt-get update`|Obtém novas listas de pacotes disponíveis|
|`apt-get upgrade`|Instala as atualizações disponíveis|
|`apt-get install pacote`|Instala um novo pacote|
|`apt-get reinstall pacote`|Reinstala um pacote já instalado|
|`apt-get remove pacote`|Remove um pacote|
|`apt-get purge pacote`|Remove o pacote e seus arquivos de configuração|
|`apt-get autoremove`|Remove automaticamente pacotes não utilizados|
|`apt-get dist-upgrade`|Atualiza a distribuição completa|
|`apt-get clean`|Apaga arquivos baixados para instalação|
|`apt-get autoclean`|Apaga apenas arquivos antigos baixados|
|`apt-get check`|Verifica se há dependências quebradas|
|`apt-get source pacote`|Baixa os arquivos fonte do pacote|
|`apt-get download pacote`|Baixa o pacote binário para o diretório atual|
|`apt-get changelog pacote`|Obtém e mostra o changelog do pacote|

---

## ⚙️ O Comando `apt`

Versão mais moderna e amigável do `apt-get`. Recomendada para uso interativo no terminal.

### Comandos principais do `apt`

|Comando|O que faz|
|---|---|
|`apt update`|Atualiza a lista de pacotes disponíveis|
|`apt upgrade`|Atualiza os pacotes instalados|
|`apt full-upgrade`|Atualiza removendo/instalando/atualizando pacotes|
|`apt install pacote`|Instala um pacote|
|`apt reinstall pacote`|Reinstala um pacote|
|`apt remove pacote`|Remove um pacote|
|`apt autoremove`|Remove pacotes não utilizados automaticamente|
|`apt list`|Lista pacotes com base nos nomes|
|`apt list --installed`|Lista apenas os pacotes instalados|
|`apt list --upgradable`|Lista pacotes com atualização disponível|
|`apt search termo`|Pesquisa nas descrições dos pacotes|
|`apt show pacote`|Mostra detalhes de um pacote|
|`apt edit-sources`|Edita o arquivo de fontes do sistema|

---

## 💡 Observações Pessoais

- Sempre executar `apt update` antes de instalar qualquer pacote — garante que a lista de pacotes está atualizada.
- `apt-get` e `apt` fazem a mesma coisa, mas o `apt` tem saída mais visual e amigável no terminal.
- `purge` vai além do `remove` — apaga também os arquivos de configuração do pacote. Usar quando quer eliminar completamente um software.
- `autoremove` é importante para manter o servidor limpo — remove dependências que ficaram "órfãs" após remoções.

---

## 📌 Resumo do pomodoro

**O que foi estudado hoje:** Gerenciamento de pacotes no Linux com `apt` e `apt-get` — instalação, atualização e remoção de software. **Por que isso importa na prática:** Todo servidor de produção precisa ter seus pacotes atualizados e gerenciados. 

---

_Autor: Kleber | Linux Fundamentals — DIO_