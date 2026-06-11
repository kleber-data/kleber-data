# IaC — Script de Criação de Estrutura de Usuários, Diretórios e Permissões

**Autor:** Kleber  
**Curso:** Linux Fundamentals — DIO  
**Instrutor:** Denilson Bonatti  
**Tags:** #linux #iac #shell-script #dio #infraestrutura

---

## Próximo ao Projeto
Script Bash que provisiona automaticamente toda a infraestrutura de usuários, grupos e diretórios de um servidor Linux. Qualquer nova máquina virtual iniciada já estará pronta para uso após a execução do script.

---

## Estrutura Criada pelo Script

### Diretórios

| Diretório | Descrição |
| :--- | :--- |
| `/publico` | Acesso liberado para todos os usuários |
| `/adm` | Exclusivo para o grupo de administração |
| `/ven` | Exclusivo para o grupo de vendas |
| `/sec` | Exclusivo para o grupo de segurança |

### Grupos

| Grupo | Diretório |
| :--- | :--- |
| `GRP_ADM` | `/adm` |
| `GRP_VEN` | `/ven` |
| `GRP_SEC` | `/sec` |

### Usuários

| Usuário | Grupo |
| :--- | :--- |
| carlos, maria, joao | `GRP_ADM` |
| debora, sebastiana, roberto | `GRP_VEN` |
| josefina, amanda, rogerio | `GRP_SEC` |

---

## Regras de Permissão
* O dono de todos os diretórios é o usuário **root**
* `/publico` → permissão total para todos (`chmod 777`)
* `/adm`, `/ven`, `/sec` → permissão total só para o grupo dono (`chmod 770`)
* Usuários de outros grupos não têm acesso aos diretórios que não pertencem

---

## Como Executar

```bash
# Dar permissão de execução
chmod +x iac.sh

# Executar o script como root
sudo ./iac.sh
