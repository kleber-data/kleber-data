**15-03-2026

## Antes de tudo, oque é um repositório?

Um repositório é o local onde contém todos os arquivos do nosso projeto. Seria como uma pastinha que guarda todos esses arquivos de nossos projetos, como os nossos projetos de software. É com eles que podemos colaborar, gerenciar nosso trabalho, acompanhar as alterações, armazenar o histórico de alterações, etc....

## O que são Branches?

É uma linha desenvolvimento separada no controle de versão. Ela permite que a gente trabalhe em modificações no código sem afetar diretamente o código principal ( geralmente chamado de branch principal, como "main" ou "master"). Isso facilita o desenvolvimento simultâneo de recursos ou correções de bugs sem intefeir no código estável da versão principal.Depois de concluir alterações em uma Branch, você pode mesclar essas alterações de volta a branch principal.

## E o Pull Request 

Um Pull Request (PR), em português, significa "Solicitação de Pull" ou "Pedido de Mesclagem". É um recurso comun em plataforma de hospedagem de código-fonte colaborativo, como o GitHub. O objetivo principal de um Pull Request é propor alterações em um repositório e solicitar que essas alterações sejam revisadas e mescladas (Merged) no código principal.

## Merge 

Já o "Merge" é uma operação no controle de versão que combina as alterações de suas branches diferentes. Quando a gente conclui o desenvolvimento de uma Branch e deseja incorporar essas alterações de volta a Branch principal (ou a outra Branch desejada), realizamos o Merge.

## Fork

**Por fim,  o Fork?**
É basicamente uma cópia de um repositório (um projeto de software) de outra pessoa para seu próprio espaço no GitHub. Isso permite que você faça alterações no código sem afetar o projeto original. Se você quiser contribuir de volta, pode enviar um "Pull Request" para que o dono do projeto original considere suas mudanças.

>>** Atenção **<<

Não utilizamos mais o termo "Master" como nome padrão para o branch principal, pois tem sido uma prática bastante questionada em vários contextos devido a associação histórica e simbolica do termo com a escravidão. Muitas comunidades de desenvolvimento e organizações estão buscando tonar a linguagem mais inclusiva e concisente das questões sociais.


**17/03/2026

## Diferença entre Git Clone e Fork

1. Fork (No Servidor)

• O que é: Uma cópia de um repositório de terceiros para a sua conta na nuvem (GitHub/GitLab).

• Onde ocorre: Inteiramente na plataforma web.

• Objetivo: Permitir que você altere um projeto sem afetar o original e possa propor mudanças via Pull Request.


2. Git Clone (Na Máquina Local)

• O que é: O download de um repositório (seu, de um fork ou de outrem) para o seu computador.

• Onde ocorre: No seu terminal/disco rígido.

• Objetivo: Trabalhar no código localmente, fazer commits e testar o projeto.

  

**Fluxo de Contribuição Open Source**

  
1. Fork o projeto original para sua conta.

2. Clone o seu fork para sua máquina.

3. Faça as alterações e dê Push para o seu fork.

4. Abra um Pull Request para o projeto original.


**18/03/2026

# E as Issues?

As issues são usadas para rastrear tarefas, bugs, melhorias ou qualquer discussão relacionada ao código-fonte do projeto. Elas nos fornecem um meio de comunicação e colaboração entre os membros da equipe e da comunidade. As issues podem ser abertas por qualquer pessoa, incluindo desenvolvedores do projeto e usuários externos. Servem para discussões, planejamento, atribuição de tarefas e acompanhamento do progresso.


# Wikis no GitHub:

**Propósito:** As Wikis no GitHub têm como propósito fornecer uma plataforma colaborativa para documentação de projetos. Elas são espaços onde membros da comunidade podem contribuir com informações, tutoriais e detalhes sobre o projeto, facilitando a compreensão e colaboração.

**Para que serve:**

1. **Documentação Colaborativa:** Permite que membros da comunidade contribuam para a criação e atualização da documentação do projeto.
    
2. **Transparência:** Torna a informação acessível a todos, promovendo transparência sobre o funcionamento do projeto.
    
3. **Aprimoramento Contínuo:** Facilita a melhoria contínua da documentação à medida que o projeto evolui.
    
4. **Acesso Rápido:** Oferece um local centralizado para informações importantes relacionadas ao projeto.
    

**Passo a Passo para Utilizar Wikis no GitHub:**

1. **Criar uma Wiki:**
    
    - Vá para o repositório no GitHub.
        
    - Clique na aba "Wiki".
        
    - Se não existir uma Wiki, você será solicitado a criar uma.
        
    
2. **Editar Conteúdo:**
    
    - Cada página na Wiki tem um botão "Editar".
        
    - Clique em "Editar" para modificar o conteúdo.
        
    - Utilize a linguagem de marcação Markdown para formatar a página.
        
    
3. **Histórico de Revisão:**
    
    - A Wiki mantém um histórico de revisões.
        
    - É possível visualizar e reverter para versões anteriores.
        
    
4. **Controle de Acesso:**
    
    - Gerencie quem pode editar a Wiki através das configurações de permissões do repositório.




# Gists no GitHub:

**Propósito:** Os Gists no GitHub são destinados a serem repositórios Git pequenos e independentes, geralmente contendo um único arquivo. Eles são úteis para compartilhar pequenos trechos de código, notas ou até mesmo scripts.

**Para que serve:**

1. **Compartilhamento Rápido:** Permite compartilhar rapidamente pequenos trechos de código ou informações.
    
2. **Colaboração Simples:** Facilita a colaboração em pequenos projetos ou soluções específicas.
    
3. **Visualização Direta:** Os Gists podem ser visualizados diretamente no navegador, sem a necessidade de clonar o repositório.
    

**Passo a Passo para Utilizar Gists no GitHub:**

1. **Criar um Gist:**
    
    - Vá para a página inicial do GitHub.
        
    - Clique em "Gist" no canto superior direito.
        
    - Adicione seu código ou texto e forneça uma descrição.
        
    
2. **Personalização:**
    
    - Escolha as opções de visibilidade (público, secreto, privado).
        
    - Adicione um nome de arquivo e uma descrição significativa.
        
    
3. **Salvar e Compartilhar:**
    
    - Clique em "Create Gist" para salvar.
        
    - O Gist terá uma URL única para compartilhar.
        
    
4. **Revisões e Forks:**
    
    - Assim como em repositórios, os Gists mantêm um histórico de revisões e podem ser bifurcados (forked).
      


-----------------------------------------------------------------

- **Clonar Repositório (`git clone`)**: Usado para criar uma cópia local de um projeto que está no GitHub.
    
- **Adicionar Arquivos (`git add`)**: Prepara as suas alterações (arquivos novos ou editados) para que o Git saiba o que será salvo no próximo passo.
    
- **Criar Branch (`git branch`)**: Cria uma nova linha de desenvolvimento separada da principal (geralmente a `main`).
    
- **Alternar Branch (`git checkout`)**: Move o seu ambiente de trabalho para uma branch que já existe.
    
- **Mesclar Branch (`git merge`)**: Junta o trabalho de uma branch (como uma "feature") dentro da branch principal.
  
  
  ## GitHub CodeSpace

## Visão Geral

O **GitHub Codespaces** é um Ambiente de Desenvolvimento Integrado (IDE) baseado na nuvem e hospedado em contêineres. Ele permite que você desenvolva código sem a necessidade de configurar ferramentas localmente.

- **Base:** Roda sobre o **VS Code**.
    
- **Infraestrutura:** Utiliza máquinas virtuais (VMs) do Azure.
    
- **Configuração:** Definida via `devcontainer.json`.
    

---

## 🛠️ Principais Recursos

- [ ] **Ambientes Padronizados:** Garante que todos os colaboradores usem a mesma versão de linguagem, extensões e ferramentas.
    
- [ ] **Acesso Multiplataforma:** Funciona no navegador (Chrome/Edge), no VS Code Desktop ou via SSH.
    
- [ ] **Port Forwarding:** Encaminha portas da VM para o seu navegador local automaticamente (ideal para testar web apps).
    
- [ ] **Ciclo de Vida Flexível:** Você pode criar, pausar, retomar ou excluir ambientes conforme a necessidade de cada _branch_.
    

---

## 💰 Modelo de Uso

O GitHub oferece uma **camada gratuita** para desenvolvedores individuais:

- **Cotas Mensais:** Geralmente 60 horas gratuitas (em máquinas de 2 núcleos).
    
- **Faturamento:** Baseado no **tempo de uso** (computação) + **armazenamento** (mesmo com o ambiente parado).
    
- **Auto-pause:** Configurável para desligar após períodos de inatividade e economizar créditos.




### **21/03/2026 - Conectando o Local ao Remoto e Sobrevivendo a Conflitos**

A aula de hoje foi focada na prática de **Sincronização e Resolução de Problemas** em um ambiente Linux (Ubuntu).

**1. Ciclo de Publicação (Local ➔ Nuvem)** Aprendemos que ter o código no PC não é o fim. O fluxo para atualizar o GitHub segue o padrão:

- `git add .`: Prepara as malas (arquivos).
    
- `git commit -m "..."`: Coloca a etiqueta na mala (descrição).
    
- `git push`: Despacha para o aeroporto (servidor do GitHub).
    

**2. O Conflito de Merge (A "Briga" de Versões)** Entendemos na prática o que acontece quando o código na nuvem e o código no PC estão diferentes (geralmente por edições diretas no site do GitHub):

- **O Problema:** O Git rejeita o `push` para evitar perda de dados.
    
- **A Solução:** Usamos o `git pull --rebase` para puxar o que está no site e tentar encaixar nossas mudanças locais por cima.
    
- **Resolução Manual:** Aprendemos a ler as marcas de conflito (`<<<<<<<`, `=======`, `>>>>>>>`) dentro do editor **Nano**, limpando o arquivo e decidindo qual versão deve permanecer.
    

**3. Markdown Avançado (Checklists e Quebras de Linha)** Dominamos a estética do README:

- **Checklists:** Para criar listas de tarefas com caixas de seleção, usamos `- [x]` para marcadas e `- [ ]` para desmarcadas.
    
- **Quebra de Linha:** No Markdown, para o texto não ficar "grudado", aprendemos a usar **dois espaços ao final da linha** ou deixar uma linha em branco entre os itens.
    

**4. Ambiente Profissional (VS Code + Extensões)** Configuramos o **VS Code** no Ubuntu como a ferramenta principal de edição:

- Uso do comando `code .` para abrir pastas instantaneamente via terminal.
    
- Instalação da extensão oficial de **Python** para ganhar IntelliSense (autocompletar) e suporte a depuração.
    

> **Insight de hoje:** "O erro do Git não é um bloqueio, é um aviso de segurança. Resolver um conflito de merge é o que separa quem apenas copia código de quem realmente gerencia projetos."


13/04/2026

# 📍Conhecendo a Administração do Github

Você aprenderá os conceitos fundamentais para utilizar as ferramentas do GitHub, as medidas de segurança e os controle disponíveis para administradores do GitHub em uma organização ou empresa.

###  O que é a administração do Github?

Os administradores do GitHub possuem um trabalho super importante que é proteger os projetos e garantir que as equipes certas possam colaborar e compartilhar seus projetos/códigos fonte. Atualmente o Github possui três tipos de administrações, sendo, a Administração em nível de equipe, de organização e empresarial.

>> Administração em Nível de Equipe <<

No GitHub, os usuários fazem parte de equipes em organizações. Essas equipes ajudam a organizar permissões e facilitam a comunicação. Além disso, você pode conectar suas equipes no GitHub com serviços de identidade, como o Microsoft Entra ID, para automatizar atualizações e facilitar a administração.

Os membros de equipe com certas permissões podem criar, renomear ou excluir equipes, adicionar ou remover membros, e gerenciar colaboradores externos. Eles também podem ajustar configurações como visibilidade da equipe, discussões e atribuição automática de revisões de código. Isso simplifica tarefas administrativas, como adicionar novos membros ou controlar permissões, tornando o processo mais eficiente.

###  >> Administração em Nível de Organização <<

No GitHub, organizações são espaços compartilhados para colaboração em projetos. Proprietários e administradores controlam acesso, convidam membros, organizam equipes e definem permissões. Recomenda-se ter uma organização única, pois criar várias pode ser complexo, sem poder duplicar configurações. Gerenciar várias organizações pode aumentar riscos e custos. Proprietários têm amplo controle, incluindo a capacidade de convidar, organizar equipes, gerenciar permissões e configurar segurança. Pode-se usar scripts para automatizar tarefas administrativas.

###  >> Administração em Nível Empresarial <<

Contas Enterprise no GitHub unificam o gerenciamento para várias organizações. Proprietários da empresa têm poder de:

1. Ativar login único (SAML) para todos, conectando identidades externas ao GitHub.
    
2. Adicionar ou remover organizações da empresa.
    
3. Controlar cobrança e designar gerentes de cobrança para todas as organizações.
    
4. Configurar políticas de segurança para repositórios, projetos e equipes.
    
5. Extrair informações usando scripts.
    
6. Aplicar mudanças globais, como migrações, usando scripts.
    

###  As Melhores Práticas

A criação de equipes na sua organização permite maior flexibilidade para colaboração e pode facilitar a separação de repositórios e permissões.:

1. Crie equipes organizadas hierarquicamente para representar a estrutura da sua empresa ou grupo.
    
2. Faça equipes com base em interesses ou tecnologias específicas para facilitar revisões de código. As pessoas podem participar conforme seus interesses ou habilidades.
    
3. Conecte suas equipes no GitHub com seu provedor de identidade (IdP) para automatizar atualizações e simplificar tarefas administrativas, como adicionar membros ou ajustar permissões. Isso reduz a necessidade de atualizações manuais.
