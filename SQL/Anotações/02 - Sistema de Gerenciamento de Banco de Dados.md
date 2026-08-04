## 04/08/2026 - SGBD - Isolamento, Auto-descrição, Compartilhamento e Visões

### Abordagem de BD

**Por que utilizar SGBDs?**

Suponha um cadastro com uma verificação de pagamento — cada uma tem instrução específica, cada uma vai ter seu conjunto de dados associados.

Suponhamos uma universidade: cadastro de alunos e verificação de pagamento — se o aluno está em dia com a mensalidade.

**Redundância e esforço repetitivo** — imagina o aluno cancelar a matrícula e mesmo assim continuar sendo cobrado. Isso não pode acontecer, é uma inconsistência aí.

Ao invés de termos 2 aplicações gerenciando informações separadamente (cadastro / SQL / verificação de pagamento), o SGBD possibilita acesso recorrente às informações persistidas, representa informações e representa perspectivas diferentes para grupos distintos.

**Características:**

- Abstração
- Isolamento
- Múltiplas Visões
- Auto-descrição
- Compartilhamento
- Transação Multiusuário

---

### Natureza auto-descritiva

- Descrição da estrutura e constraints
- DB schema

O esquema do banco de dados nada mais é do que a estrutura bem definida antes da inserção dos dados.

Abordagem tradicional — quem vai definir a estrutura dessa classe é o programa.

Catálogo — está atrelado à auto-descrição do SGBD, onde se vê relacionamento e atributos das entidades.

---

### Isolamento Programa / Dados e Abstração

Independência de programas e dados.

**Abstração** — independência do programa em relação aos dados.

**Transparência** — o que o SGBD faz para lidar com os arquivos; como ele armazena, como desenvolver — não é necessário saber isso.