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

| Distribuição              | Gerenciador de Pacotes |
| ------------------------- | ---------------------- |
| Debian / Ubuntu           | `apt` / `apt-get`      |
| Red Hat / Fedora / CentOS | `yum` / `dnf`          |
| Arch Linux                | `pacman`               |

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
## 16/06/2026 -  📑 Gerenciamento de Pacotes no Linux (APT)

## 📌 Ciclo de Vida de um Aplicativo
No Linux (distribuições baseadas em Debian/Ubuntu), o gerenciamento de softwares no terminal segue três passos principais: **Buscar**, **Instalar** e **Remover**.

---

## 🔍 1. Buscar Aplicativos
Quando você precisa de uma ferramenta mas não sabe o nome exato do pacote, ou quer ver se ele está disponível.

* **Comando:** `apt search <nome_do_programa>`
* **Exemplo:** `apt search zip` *(Mostra todos os pacotes relacionados a "zip")*

> 💡 **Nota:** Antes de buscar ou instalar, é sempre boa prática rodar o comando `apt update` para atualizar a lista de pacotes do sistema com as versões mais recentes.

---

## 📥 2. Realizar Instalação
Para baixar e instalar um programa e todas as dependências que ele precisa para funcionar.

* **Comando:** `apt install <nome_do_programa>`
* **Exemplo prático:** `apt install unzip`

---

## ❌ 3. Remover Aplicativos
Existem duas formas de deletar um programa do sistema, dependendo do nível de limpeza que você deseja:

### Apenas o programa
Remove o executável do software, mas **mantém** os arquivos de configuração que você alterou (caso decida reinstalar no futuro).
* **Comando:** `apt remove <nome_do_programa>`

### Limpeza Completa (Purge)
Remove o programa e **deleta absolutamente todos** os arquivos de configuração associados a ele.
* **Comando:** `apt purge <nome_do_programa>`

---

## 🛠️ Prática Realizada
1. Tentativa de usar o comando `unzip` (sistema acusou que não existia).
2. Instalação da ferramenta via `apt install unzip`.
3. Execução com sucesso para extrair o arquivo `main.zip`.

## # 17/06/2026 — Gerenciamento de Pacotes: Atualização do Sistema Operacional

## Conceito principal

Atualizar o sistema operacional significa manter os pacotes nas versões mais recentes — tanto o índice de repositórios quanto os pacotes instalados.

**Ponto crítico:** se houver uma aplicação rodando em produção, **nunca atualizar diretamente no servidor de produção sem antes passar por um ambiente de teste.** O risco é a atualização quebrar alguma dependência da aplicação.

**Boas práticas antes de atualizar:**

- Ter um ambiente de teste que espelhe o de produção
- Fazer um **snapshot** da máquina antes de atualizar — se der problema, é possível reverter
- Validar o comportamento da aplicação no ambiente de teste após a atualização
- Só subir para produção depois de confirmar que está tudo ok

---

## Comandos

|Comando|O que faz|
|---|---|
|`apt update`|Atualiza o índice de repositórios (lista de pacotes disponíveis)|
|`apt upgrade -y`|Instala as versões mais recentes dos pacotes já instalados (`-y` confirma automaticamente)|
|`shutdown 0`|Reinicia/desliga a máquina imediatamente (útil após atualizações de kernel)|

---

## Bloco de código

bash

```bash
# Atualizar índice de repositórios
apt update

# Atualizar todos os pacotes instalados
apt upgrade -y

# Reiniciar a máquina
shutdown 0
```

---

## Observações pessoais

- O `apt update` não instala nada — só atualiza a "lista de preços" do repositório. O `apt upgrade` é que de fato instala.
- O `-y` no upgrade evita ter que confirmar manualmente cada pacote — útil em scripts de automação.
- A dica do snapshot é ouro: no EC2 da AWS isso seria um **AMI** ou **snapshot do EBS** antes de rodar o upgrade em produção.
- Em ambiente corporativo isso se chama **Change Management** — qualquer atualização passa por aprovação e janela de manutenção.

---

## Resumo do Pomodoro

**O que foi estudado hoje:**  
Comandos para atualização do sistema operacional Linux via APT (`apt update` e `apt upgrade`), e as boas práticas de segurança antes de atualizar ambientes em produção — uso de ambiente de teste e snapshots para rollback.

**Por que isso importa na prática:**  
Atualizar um servidor de produção sem teste prévio é uma das causas mais comuns de incidentes em empresas. Um engenheiro de dados precisa saber operar servidores Linux com segurança, especialmente em ambientes cloud onde os dados da organização estão em jogo.

**Exemplo do mundo real:**  
Uma equipe de dados tem um pipeline rodando no Linux. O admin roda `apt upgrade` direto em produção sem testar antes. A atualização muda a versão do Python de 3.10 para 3.12, quebra uma biblioteca do pipeline, e os dados param de processar na madrugada. Com um snapshot e ambiente de teste, isso seria detectado antes e revertido em minutos.



## 24/06/2026  Gerenciamento de Pacotes no Linux


## 1. Ambiente Desktop (Ubuntu Nativo)
No Ubuntu Desktop, a instalação de aplicativos pode ser feita de duas formas, ficando a critério do usuário:
* **Interface Gráfica:** Utilizando a loja de aplicativos nativa (Ubuntu Software / App Center), que possui uma experiência visual muito semelhante à Windows Store ou Mac App Store.
* **Terminal (CLI):** Utilizando o gerenciador de pacotes `apt` com o comando:
  bash
  sudo apt install nome_do_aplicativo

## 2. Padrões de Arquivos e Extensões (.deb vs .rpm)

Assim como no ecossistema Windows estamos acostumados a instalar programas por meio de arquivos executáveis com extensão `.exe` ou `.msi` (Microsoft Installer), no mundo Linux o formato muda de acordo com a base da distribuição:

- **Base Debian/Ubuntu:** Utiliza arquivos com a extensão `.deb`.
    
- **Base Red Hat:** Utiliza arquivos com a extensão `.rpm`.
    

## 3. Gerenciamento de Pacotes em Outras Distribuições (Red Hat, Fedora, CentOS)

Para distribuições da família Red Hat e sistemas derivados, as ferramentas de gerenciamento de pacotes e os comandos são diferentes do ecossistema Debian.

Principais gerenciadores por sistema:

- **Fedora / RHEL / CentOS:** Utilizam o `dnf` (moderno) e o `yum` (legado/compatibilidade).
    
- **Amazon Linux:** Utiliza `yum` / `dnf`.
    
- **openSUSE (SUSE Linux):** Utiliza o gerenciador `zypper`.
    

## 4. Gerenciamento em Ambientes de Servidor (Sem Interface Gráfica / CLI)

Considerando um cenário de administração de servidores onde não há ambiente gráfico disponível, todo o gerenciamento de pacotes deve ser feito obrigatoriamente via linha de comando (terminal).

### Resumo dos Principais Comandos (Cheat Sheet)

|**Sistema Operacional**|**Atualizar Repositórios**|**Instalar Pacote**|**Remover Pacote**|
|---|---|---|---|
|**Ubuntu / Debian**|`sudo apt update`|`sudo apt install <pacote>`|`sudo apt remove <pacote>`|
|**Fedora / Red Hat**|`sudo dnf check-update`|`sudo dnf install <pacote>`|`sudo dnf remove <pacote>`|
|**openSUSE**|`sudo zypper refresh`|`sudo zypper install <pacote>`|`sudo zypper remove <pacote>`|


## ````
## 28/06/2026 Copiando Arquivos e Manipulando Processos — Linux

## 1. Copiando Arquivos (`cp`)
Antes de realizar uma cópia, defina três coisas fundamentais:
1. Onde está o arquivo (**origem**)
2. Para onde ele vai (**destino**)
3. Quais arquivos serão copiados (específico, todos, por extensão)

### Sintaxe básica
```bash
cp <origem> <destino>
````

_No Ubuntu e na maioria das distribuições, o `cp` não exibe mensagem de sucesso. Use o comando `ls` no destino para verificar._

### Exemplos práticos

Bash

```
# Copiar um arquivo específico para a pasta /disk2/
cp /home/denilson/arquivo.txt /disk2/

# Copiar todos os arquivos .txt usando o caractere curinga (*)
cp /home/denilson/*.txt /disk2/

# Copiar todos os arquivos que começam com a letra "a"
cp /home/denilson/a* /disk2/

# Copiar absolutamente todos os arquivos do diretório
cp /home/denilson/* /disk2/
```

> [!INFO] O Curinga `*`
> 
> O asterisco (`*`) representa qualquer sequência de caracteres em comandos de terminal.

### Opções importantes do `cp`

|**Opção**|**Significado**|
|---|---|
|`-i`|**Interativo:** Pergunta antes de sobrescrever um arquivo existente.|
|`-r`|**Recursivo:** Copia diretórios inteiros e seus subconteúdos (essencial para backups).|
|`-v`|**Verboso:** Exibe no terminal o progresso detalhado do que está sendo copiado.|

Bash

```
# Exemplo combinando opções (recursivo + verboso)
cp /home/denilson/* /disk2/ -rv
```

> [!WARNING] Cuidado
> 
> Sem a opção `-i`, se já existir um arquivo com o mesmo nome no destino, ele será **sobrescrito silenciosamente**.

## 2. Movendo e Renomeando Arquivos (`mv`)

O princípio é idêntico ao do `cp` (origem e destino). A diferença crucial é que o arquivo original deixa de existir na origem após a operação.

### Sintaxe básica

Bash

```
mv <origem> <destino>
```

### Exemplos práticos

Bash

```
# Mover um arquivo mantendo o mesmo nome
mv /home/denilson/planilhas.xlsx /disk2/

# Mover pedindo confirmação se for sobrescrever algo
mv /home/denilson/planilhas.xlsx /disk2/ -i
```

### Renomear arquivos com `mv`

O Linux não possui um comando exclusivo "rename" nativo padrão; usa-se o `mv` apontando para o mesmo diretório, mudando apenas o nome do arquivo final:

Bash

```
mv bancodedados.mdf banco_de_dados.mdf
```

### Opções importantes do `mv`

|**Opção**|**Significado**|
|---|---|
|`-i`|**Interativo:** Pergunta antes de sobrescrever.|
|`-f`|**Force:** Força a substituição sem fazer perguntas.|
|`-v`|**Verboso:** Mostra o arquivo que está sendo movido/renomeado.|

> [!NOTE] Diferença Importante
> 
> O comando `mv` **não possui** a opção `-r` (recursivo). Ele consegue mover diretórios inteiros nativamente sem precisar de parâmetros adicionais.

## 3. Visualizando e Encerrando Processos

### Listar processos (`ps`)

Bash

```
ps        # Mostra apenas os processos do usuário atual abertos neste terminal
ps -a     # Mostra processos de todos os usuários vinculados a um terminal
ps -au    # Inclui o nome do usuário e o horário de início do processo
ps -aux   # Inclui também processos que rodam em background/fora do console (completo)
```

### Encerrar um processo (`kill` e `killall`)

Bash

```
# Encerrar utilizando o PID (ID numérico do processo)
kill 1234  

# Encerrar todos os processos associados a um programa pelo nome
killall chrome
```

> [!TIP]
> 
> O `killall` é muito útil para navegadores e serviços que abrem múltiplos subprocessos simultâneos.

### Usuários logados no servidor (`w` e `who`)

Bash

```
w         # Mostra quem está logado, horário de login e o que estão executando
who -a    # Mostra os usuários logados acompanhados do PID de cada sessão
```

Para derrubar/desconectar a sessão de um usuário indesejado no servidor:

Bash

```
kill <PID_DA_SESSAO>
```

## Resumo Geral de Comandos

|**Comando**|**Função**|
|---|---|
|`cp origem destino`|Copia arquivos|
|`cp -r`|Copia diretórios recursivamente|
|`cp -i`|Pergunta antes de sobrescrever na cópia|
|`cp -v`|Exibe o progresso da cópia|
|`mv origem destino`|Move ou renomeia arquivos e pastas|
|`mv -i`|Pergunta antes de sobrescrever no movimento|
|`ps -aux`|Lista detalhadamente todos os processos do sistema|
|`kill PID`|Encerra um processo pelo seu número identificador|
|`killall nome`|Encerra todos os subprocessos de um programa pelo nome|
|`w`|Exibe usuários online e suas atividades atuais|
|`who -a`|Exibe usuários online com os PIDs das sessões|


_Autor: Kleber | Linux Fundamentals — DIO_