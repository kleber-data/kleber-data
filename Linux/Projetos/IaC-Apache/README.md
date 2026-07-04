# IaC — Script de Provisionamento de Servidor Web Apache

**Autor:** [Kleber]  
**Curso:** Linux Fundamentals — DIO  
**Instrutor:** Denilson Bonatti  
**Tags:** #linux #iac #shell-script #dio #infraestrutura #apache #web-server

---

## Próximo ao Projeto

Script Bash que provisiona automaticamente toda a infraestrutura de um servidor web Apache em uma máquina Linux. O script automatiza desde a atualização do sistema até o download e implantação da aplicação, deixando o servidor pronto para uso imediatamente após a execução.

---

## Estrutura Criada pelo Script

### Pacotes e Serviços

| Pacote/Serviço | Descrição |
| :--- | :--- |
| **Apache2** | Servidor web responsável por processar e entregar as páginas HTML. |
| **Unzip** | Utilitário para descompactar o arquivo da aplicação baixado do repositório. |

### Diretórios e Arquivos

| Diretório/Arquivo | Descrição |
| :--- | :--- |
| `/tmp` | Diretório temporário onde o script baixa e extrai o código-fonte da aplicação. |
| `/var/www/html/` | Diretório raiz do Apache para onde os arquivos finais do site são copiados. |

---

## Fluxo de Execução do Script

1. **Atualização do Sistema:** Executa o `apt-get update` e `upgrade` para garantir que o SO esteja seguro e atualizado.
2. **Instalação de Dependências:** Instala o servidor web Apache2 e a ferramenta de descompactação Unzip.
3. **Download da Aplicação:** Acessa o repositório remoto via `wget` e baixa o pacote `.zip` da aplicação no diretório `/tmp`.
4. **Deploy do Conteúdo:** Descompacta o arquivo e copia todo o conteúdo de forma recursiva para a pasta pública do Apache (`/var/www/html/`).

---

## Como Executar

```bash
# Dar permissão de execução ao script
chmod +x iac-apache.sh

# Executar o script como root/sudo
sudo ./iac-apache.sh
