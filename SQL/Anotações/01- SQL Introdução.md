# Contextualização do cenário na área de Banco de Dados


## Visão geral da Formação SQL DataBase Specialist

### Objetivo Geral
- Interpetração e Extração de Dados
- Manutenção dos métodos e procedures
- Contrução de Banco de Dados
- Modelagem de dados
- Desempenho
- Equipe DBA
- Analista em Banco de Dados com foco no MySQL

### Percurso - 
		**Fundamentos de Banco de Dados**
- Introdução a Banco de Dados
- Sistema de Gerenciamento de Banco de Dados
- Modelagem de Dados para Banco de Dados
- Arquitetura de Banco de Dados

		**Modelo Entidade Relacionamento com Banco de Dados**
- Fundamentos de Modelagem e Projeto de BD
- Modelo Entidade Relacionamento com BD
- Modelo Relacionamento de Entidade Aprimorado com BD
- Desafios de Projeto: Modelagem Conceitual

		**Explorando a Linguagem de Consulta a BD SQL**
- Modelo Relacional e Mapeamento de ER com BD
- Primeiros Passos com SQL
- Explorando Queries com SQL
- Criando Queries com Funções e Clásulas de Agrupamento
- Agrupamento Registros e Tabelas com Join Statement
- Desafios de Projeto: Projeto Lógico de Banco de Dados

		**Técnicas Avançadas em Banco de Dados**
- Personalizando Acesso com Views
- Explorando Cláusulas DDL e Schema em Banco de Dados
- Explorando Lógica de Programação com SQL Dinâmico
- Overview sobre Automação de Processos com Triggers
- Fundamentos de Indexação em SGBD's com MySQL
- Normalização de Banco de Dados

		**Trabalhando com Transações, Controle de Concorrência e Técnicas de Recuperação de Banco de Dados no MySQL**
- Trabalhando com Transações em Banco de Dados no MySQL
- Técnicas de controle de concorrência para Transações Simultâneas de Banco de Dados com foco no MySQL
- Técnicas de Recuperação em Dados de Banco de Dados com MySQL



## 31/07/2026

### Objetivo Geral

O objetivo geral deste módulo é apresentar o mundo da modelagem de dados voltada para sistemas de banco de dados. É o primeiro mergulho no mundo de Banco de Dados, trazendo uma visão geral sobre o assunto.

- Contextualização
- Introdução à modelagem de dados
- Explorando SGBDs
- Arquitetura de SGBDs

---

### Contextualizando — O que são Dados?

Existe uma diferença entre **dados** e **informação**.

Se pararmos pra pensar, hoje tudo é dado. O próprio objetivo da internet é esse: uma grande rede interconectando diversos países, línguas diferentes e fontes heterogêneas.

Hoje em dia tudo está no celular. Você literalmente carrega um banco de dados no bolso, com todos os seus cookies — isso é amplamente usado pelo marketing digital, por exemplo. Cookies são um tipo de dado transmitido pelo protocolo HTTP.

Um exemplo clássico: você pesquisa um produto no Google e, ao entrar no Instagram, o mesmo produto aparece "magicamente" na sua tela. O poder dos dados está exatamente nisso — conseguir atingir o público certo de forma assertiva (sistema de leads, otimização de negócios).

Só que dado e informação **não são a mesma coisa**. Dados precisam ser limpos, tratados (remoção de redundância, etc.) antes de virarem informação de fato. É aí que entra o papel do cientista de dados: pegar dados brutos e transformá-los em insights que apoiem tomadas de decisão de negócio — algo que impacta diretamente a saúde da empresa.

Games, diretórios, GPS, análises gráficas, aplicativos, buscadores — tudo isso é dado.

E esses dados precisam ser **persistidos de forma confiável**: depois de um tempo, a informação ainda precisa estar lá, sem ter sido corrompida por algum motivo.

Antigamente, um arquivo era facilmente corrompido. Hoje esse tipo de coisa não pode mais acontecer. Quando pensamos em banco de dados, dois pilares fundamentais são **segurança** e **persistência**.

Existe uma escala do menor até o maior conjunto de dados. Quando você acessa sua conta em um caixa eletrônico, por exemplo, está acessando um banco de dados por meio de uma API relacionada especificamente à sua conta — você não pode acessar a conta de outra pessoa.

Imagina se isso não existisse: todos os usuários do banco acessando as contas uns dos outros, realizando saques e tarefas livremente. Seria um problema seríssimo. É por isso que o SGBD é essencial para garantir esse tipo de restrição de acesso aos dados.

Um exemplo mais simples: uma biblioteca. É um sistema bem menos complexo, mas mesmo assim possui sua própria proteção.

Antigamente, os dados eram basicamente numéricos e textuais (ex: disquetes, década de 90). Hoje temos, literalmente na mão, uma capacidade de processamento muito maior do que a de 20 anos atrás — inclusive existem supercomputadores atualmente.

O foco de hoje é totalmente diferente. O paradigma mudou, a complexidade mudou. Evoluímos em processamento e, consequentemente, aumentamos a capacidade de armazenamento. Hoje não é mais só texto e número: temos redes sociais, estruturas complexas com likes, imagens, vídeos, redes se conectando — e queremos mapear essa rede, sendo possível até identificar perfis de possíveis compradores.

#### O paradigma do Big Data — os 3 V's

- **Velocidade**
- **Variedade**
- **Volume**

São três características que, juntas, geram um trabalho enorme. Em termos de volume, uma rede social ou um banco produzem uma quantidade gigantesca de dados — o processo de armazenamento se torna gigantesco, vindo de fontes heterogêneas.

A velocidade dos dados hoje é medida em milissegundos. Há uma quantidade muito grande de dados sendo produzida a todo momento, e outra barreira importante é lidar com dados em tempo real.

Diversas tecnologias foram surgindo para acompanhar esse cenário: Cassandra, MongoDB, Neo4j, Azure, Redis, AWS. Isso exige uma nova forma de modelar os dados.

Tudo isso veio para facilitar a nossa vida: ao invés de provisionar um servidor do zero, você utiliza um desses serviços já pré-configurado.

---

### O que são Banco de Dados?

Diferente do que estamos acostumados a pensar, **banco de dados não é sinônimo de SGBD**. Precisamos entender essa diferença.

Já que os dados vêm de uma estrutura, o que é dado de fato? Dado é, efetivamente, um fato — um "diamante bruto". Está relacionado a um acontecimento, fenômeno ou fato, mas precisa ser lapidado. Os dados são persistidos, e é daí que vem a ideia de *database*: não é apenas um local para armazenar.

**Um banco de dados é um conjunto de dados organizados para transmitir informação.** O database virou um sistema próprio para isso.

Se pensarmos bem, temos uma infinidade de dados, e esses dados transmitem algum tipo de significado — precisamos entendê-lo, e a partir daí conseguimos montar um "sisteminha".

No seu celular, por exemplo:
- Nome
- Telefone
- E-mail
- WhatsApp

Esses são dados que informam algo sobre uma pessoa e a forma como você pode se conectar ou se comunicar com ela.

Podemos considerar um banco de dados como uma coleção de dados entre os quais existe um relacionamento — essa é uma definição bem generalista e ampla. **Um SGBD contém diversos bancos de dados.**

#### Pensando em um cenário mais restrito

Dentro de um SGBD, em um contexto mais restrito, estaremos representando um determinado recorte do mundo real. Os dados precisam ter coerência ou um propósito dentro desse contexto — geralmente é aqui que o termo "banco de dados" é usado como sinônimo de "ambiente específico dentro de um SGBD". Nesse sentido restrito, o termo passa a fazer mais sentido.

Existem diversas fontes distintas produzindo dados. Esses dados são persistidos em algum lugar, e esse armazenamento é gerenciado por algum tipo de software.

O acesso a esses dados geralmente acontece por meio de uma **API**. Exemplo: quando você vai a um caixa eletrônico e consegue ver as informações da sua conta, isso é uma API em ação.

#### A analogia do restaurante

Pensa num cenário onde você tem um garçom: você não precisa saber como o seu prato vai ser montado, você chama o garçom e faz o pedido. O garçom leva o pedido até o chef, o chef executa a requisição, e quem pediu recebe o resultado.

É basicamente isso que acontece quando você acessa dados por meio de uma API: você está executando ações (como uma consulta), e essas ações implicam em uma **mudança de estado**. O banco de dados sai de um estado original e vai para um estado subsequente a partir da sua solicitação.

O sistema precisa sair de um estado válido para outro estado válido para que a operação seja considerada correta. O sistema precisa ser **confiável**.

#### Escala

O que muda de um banco para o outro, no fim das contas, é o tamanho: alguns com centenas de registros, outros com milhões, outros com bilhões.

**Exemplo — Amazon:**
- 60 milhões de usuários
- 42 terabytes de informação

Para tratar um volume desses, é necessário um SGBD distribuído, capaz de garantir performance. Provavelmente existe um modelo relacional envolvido, um NoSQL e um sistema distribuído trabalhando junto — sendo que inclusive é possível distribuir um modelo relacional.

Dificilmente esse tipo de gerenciamento será feito manualmente. Na prática, existe um sistema cuidando desse gerenciamento de forma automatizada.



# 01/08/2026 **SGBDs - Sistemas de Gerenciamento de Banco de Dados**

### Oque é um SGBD?

- Definição
- Construção
- Manipulação
- Compartilhamento

Quando pensamos em SGBD agente pensa em um software de proposito geral, a função dele e gerenciar os dados inseidos neles Definição - Tipos de dados, Estrutura, Constexto

Como representar isso no mundo real

Construção - Inserção desses dados, mapeamento dos requisitos, criar strutura relacional, a partir disso criar comandos para persistir e inserir as informações.

Manipulação - Recuperação, Relatórios, a partir daqui o SGBD ja está rodando, fornecendo dados, ela esta relacionada a recuperação de informações ou geração de relatorio, existe uma determinada linguagem que vai me da acesso, atraves de comandos compilados para depois o SGBD transferir informações

Compartilhamento - Acesso, Simultaneidade, provavelmente diversos grupos diferentes acessando o mesmo dado, no caso pessoas diferentes grupos diferentes interessados a esses dados, voce vai criar acessos simultanesos atraves de regras para gerenciar,

conjuntos de comandos agregados dentro de uma transação dentro de um SGBD, as querys que voce realiza, sao na verdade solicitações. Alem disso ele tem um ciclo de vida longo, proteção, sem haver comprometimento da base, além da parte de acesso restrigindo acessos a determinadas pessoas.

SGBD é um software modular, composto por outro que o auxiliam nas suas tarefas, armazenamento, acesso etc.

Aplication Programa/ Queries (seta para baixo) Software to Process (seta para baixo) Software to Acces (seta para baixo) (seta para baixo) Stored Database Stored Database Definition meta-data

- Nome completo
    
- Matricula
    
- Endereço
    
- Campus
    
- Curso
    
- Telefone
    
- Email
    
- ....
    

Definição - Explorando novas - Meta dados.

explorando informações sobre

- Estudantes
- Cursos
- Seção
- Pré-Requisitos
- Report da grade

Colunas - são atributos propriedades Linhas - são os dados persistirdos

Cada atributo vai determana um dado especifico para a propriedade nome = varchar numero = int

Contrução - como vai ser acessado esses dados? qual estrutura de dados será utilizado a busca, melhora de performance utilizando indices para acesso mais rapido

Manipulação - manutenção do banco, solicitação processada transformada em query e passa para compilação consulta o meta dados, entender a estrutura, e voltar com esses dados ate o usuario

Compartilhamento - padrao, bloqueio das tabelas quando executado update ocorre via transação ex: assento de avião.

### **Historico SGBD**

**Como Surgiu?** A ideia de gerenciamento de dados surgiu em 1960 A ideia de relacional em 1970 foi o intuito de diminuir o custo com pessoas, diferente de um cerebro humano a maquina consegue operar 24 horas por dia. para gerenciar dados e preciso criar a estrutura primeiro

Modelo Hierarquico - voltado para informação voltado a registro links e dados com raiz

Modelo em Rede - relação cliente conta

Modelo relacional - Criado em 1970 por Edgar Frank "Ted" Codd.

Caracteristicas:

- Algebra relacional
- Relações
- TAD para armazenamento
- Transparência

existem 2 tipo de usuarios no SGBD DBA - Definir tabelas regras, entidades e atributos, os comandos LDD ou DDL LDD- Linguagem de Definição de Dados. também responsavel pela arquieterua do Banco de Dados

tradução -> execução -> gerenciador -> metadados & schema

Usuario convencional - Linguagem de manipulação dos dados, gerlamente e recuperar informações.

- alterar e extrair informações
- duraveis

agrupa para executar,

Mostrar mais

## 01/08/2026 **SGBDs — Sistemas de Gerenciamento de Banco de Dados**

Bora organizar! Antes de te devolver o markdown, deixa eu te falar: você trouxe bastante coisa densa hoje, e tem um ponto no meio que quero destacar rapidinho, porque é fundamental — o **diagrama** que você desenhou (Application/Queries → Software to Process → Software to Access → Stored Database) é literalmente a **arquitetura interna de um SGBD**. Vou organizar isso de forma legível no markdown.

Aqui está a versão organizada:

---

markdown

```markdown
## 01/08/2026 — SGBDs: Sistemas de Gerenciamento de Banco de Dados

### O que é um SGBD?

Um SGBD é um software de propósito geral, cuja função é gerenciar os dados inseridos nele. Suas quatro responsabilidades centrais são:

- Definição
- Construção
- Manipulação
- Compartilhamento

---

#### Definição

Envolve os tipos de dados, a estrutura e o contexto — ou seja, como representar aquilo no mundo real.

#### Construção

É a etapa de inserção dos dados: mapeamento dos requisitos, criação da estrutura relacional e, a partir disso, criação dos comandos necessários para persistir e inserir as informações.

#### Manipulação

Envolve recuperação de dados e geração de relatórios. É aqui que o SGBD já está em funcionamento, fornecendo dados. Existe uma linguagem específica que dá acesso a essas informações, através de comandos compilados, para que o SGBD então retorne os dados solicitados.

#### Compartilhamento

Trata do acesso e da simultaneidade — provavelmente diversos grupos e pessoas diferentes vão acessar o mesmo dado ao mesmo tempo. Por isso, são criadas regras para gerenciar acessos simultâneos.

Conjuntos de comandos agregados dentro de uma transação, dentro de um SGBD — as *queries* que executamos são, na prática, solicitações.

Além disso, o SGBD tem um ciclo de vida longo, com proteção contra comprometimento da base, além de restringir o acesso a determinadas pessoas ou grupos.

---

### Arquitetura de um SGBD

Um SGBD é um software modular, composto por outros módulos que o auxiliam em suas tarefas (armazenamento, acesso, etc.):
```

```
   Aplicação / Queries
          ↓
  Software de Processamento
          ↓
    Software de Acesso
     ↓            ↓
```

Banco de Dados Definição do  
Armazenado Banco de Dados  
(meta-dados)

```

**Exemplo de meta-dados** (estrutura que descreve os dados de um estudante):

- Nome completo
- Matrícula
- Endereço
- Campus
- Curso
- Telefone
- E-mail

**Outras entidades exploradas no exemplo:**

- Estudantes
- Cursos
- Seção
- Pré-requisitos
- Report da grade

---

### Colunas e Linhas

- **Colunas** → são os atributos/propriedades
- **Linhas** → são os dados persistidos

Cada atributo determina um dado específico para aquela propriedade. Exemplo:

- `nome` → `varchar`
- `numero` → `int`

---

### As 4 responsabilidades, revisitadas na prática

**Construção** — Como esses dados vão ser acessados? Qual estrutura será utilizada na busca? Aqui entra a melhoria de performance com o uso de **índices** para acesso mais rápido.

**Manipulação** — Manutenção do banco: a solicitação do usuário é processada, transformada em *query*, passa pela compilação, consulta os meta-dados para entender a estrutura, e então retorna os dados até o usuário.

**Compartilhamento** — Padrão de bloqueio de tabelas quando uma operação de `UPDATE` é executada, via transação. Exemplo prático: reserva de assento de avião (dois usuários não podem reservar o mesmo assento ao mesmo tempo).

---

### Histórico do SGBD

**Como surgiu?**

- A ideia de gerenciamento de dados surgiu em **1960**.
- A ideia do modelo relacional surgiu em **1970**.

O intuito inicial era diminuir o custo com pessoas — diferente do cérebro humano, a máquina consegue operar 24 horas por dia. Mas, para gerenciar dados, é preciso primeiro criar a estrutura.

#### Modelos de dados ao longo do tempo

**Modelo Hierárquico** — Voltado para informações organizadas como registros, com links e dados partindo de uma raiz.

**Modelo em Rede** — Relação do tipo cliente–conta.

**Modelo Relacional** — Criado em 1970 por **Edgar Frank "Ted" Codd**.

Características do modelo relacional:

- Álgebra relacional
- Relações
- TAD (Tipo Abstrato de Dados) para armazenamento
- Transparência

---

### Tipos de usuário em um SGBD

**DBA (Database Administrator)**

Responsável por definir tabelas, regras, entidades e atributos — utiliza os comandos **DDL** (Data Definition Language / Linguagem de Definição de Dados). Também é responsável pela arquitetura do banco de dados.

Fluxo: `tradução → execução → gerenciador → metadados & schema`

**Usuário convencional**

Utiliza a linguagem de manipulação dos dados (DML), geralmente para recuperar informações:

- Alterar e extrair informações
- Operações duráveis, agrupadas para execução
```