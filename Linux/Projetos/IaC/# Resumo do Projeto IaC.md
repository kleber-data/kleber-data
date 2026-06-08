
## 07/06/2026 - Resumo do Projeto: IaC, Scripts, Usuários e Permissões

A **Infraestrutura como Código (IaC)** consiste em gerenciar e provisionar ambientes computacionais por meio de arquivos de configuração automatizados, eliminando processos manuais, reduzindo erros humanos e garantindo que o mesmo ambiente possa ser replicado perfeitamente quantas vezes for necessário.

No contexto de provisionamento de sistemas operacionais (como scripts Bash ou ferramentas como Ansible), o gerenciamento de acessos segue uma estrutura lógica rigorosa:

### 1. Criação e Estruturação de Diretórios

- **Automação:** O script deve criar a árvore de diretórios necessária para a operação da empresa ou aplicação de forma automática (ex: `/publico`, `/adm`, `/ven`, `/sec`).
    
- **Padronização:** Garante que toda nova máquina virtual ou container provisionado nascerá com a exata mesma estrutura de pastas.
    

### 2. Gerenciamento de Grupos e Usuários

- **Agrupamento Lógico:** Em vez de atribuir permissões usuário por usuário, as boas práticas de IaC ditam a criação de **Grupos** (ex: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`).
    
- **Provisionamento de Usuários:** O script faz o cadastro em lote dos usuários (ex: `carlos`, `maria`, `joao`), definindo suas senhas padrão (criptografadas), shells padrão (como `/bin/bash`) e associando cada um diretamente ao seu respectivo grupo.
    

### 3. Controle de Permissões e Segurança

O coração do script de infraestrutura está em garantir a segurança dos dados manipulados:

- **Dono e Grupo (`chown`):** Define quem é o usuário dono da pasta e qual grupo tem direitos sobre ela. Pastas de departamentos específicos devem pertencer estritamente aos seus respectivos grupos.
    
- **Privilégios de Acesso (`chmod`):** * Diretórios públicos ou compartilhados recebem permissões totais de leitura e escrita para todos.
    
    - Diretórios restritos garantem acesso total apenas ao dono e ao grupo correspondente, bloqueando completamente o acesso de terceiros (outros usuários do sistema).
        

### Benefícios Desta Abordagem (Por que usar IaC?)

- **Consistência:** O ambiente configurado hoje será idêntico ao configurado daqui a um ano.
    
- **Velocidade:** Configurar 10 ou 100 servidores com esses usuários e permissões leva o mesmo tempo que configurar apenas um.
    
- **Rastreabilidade:** O script pode ser salvo em repositórios Git, permitindo saber exatamente quem alterou uma permissão ou adicionou um usuário ao longo do tempo.