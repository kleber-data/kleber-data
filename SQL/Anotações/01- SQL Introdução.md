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

