

### 📚 Lista de Comandos Consolidada (ThinkPad T495)

#### Navegação e Localização (Onde estou?)

- **pwd**: (Print Working Directory) Mostra o caminho completo de onde você está.
    
- **ls**: Lista os arquivos e pastas do diretório atual.
    
- **ls -l**: Lista com detalhes (permissões, dono e tamanho).
    
- **ls -lt | head -n 5**: Mostra os últimos 5 arquivos modificados.
    
- **cd /**: Vai para a Raiz do sistema.
    
- **cd ~**: Volta para a sua pasta pessoal (`/home/kleber`).
    
- **cd ..**: Volta uma pasta para trás.
    
- **cd ../[nome]**: Volta uma pasta e já entra em outra.
    

#### Filtros e Visualização (Pipes e Coringas)

- **| (Pipe)**: O "cano". Joga a saída de um comando para outro.
    
- **ls | less**: Permite navegar em listas gigantes (Setas para rolar, `/` para buscar, `q` para sair).
    
- **ls | more**: Visualizador simples (Espaço para pular página, `q` para sair).
    
- **ls p***: Lista tudo que começa com "p". (Se for pasta, lista o que tem dentro).
    
- **ls ?rh***: O `?` ocupa exatamente uma posição. Busca arquivos com qualquer letra + "rh".
    
- **ls arquivo[1-3]***: Busca arquivos que tenham o número 1, 2 ou 3 naquela posição.
    
- **ls arquivo[^3-5]***: O `^` **exclui**. Lista tudo, exceto o que tem números de 3 a 5.
    

#### Manipulação de Arquivos e Pastas

- **mkdir**: Cria uma nova pasta.
    
- **mkdir -p**: Cria pastas em cascata (ex: `Linux/Notas/Certificados`).
    
- **touch**: Cria um arquivo vazio (ex: `aula04.md`).
    
- **cp**: Copia um arquivo.
    
- **cp -r**: Copia uma pasta inteira.
    
- **mv**: Move ou Renomeia um arquivo/pasta.
    
- **rm**: Apaga um arquivo. **(Cuidado: sem lixeira!)**
    
- **rm -rf**: Apaga uma pasta e tudo dentro dela à força.
    

#### Administração e Manutenção (O "Checkup")

- **sudo**: Executa comandos como administrador (root).
    
- **sudo apt update**: Atualiza a lista de repositórios.
    
- **sudo apt upgrade -y**: Instala as atualizações de fato.
    
- **sudo apt autoremove -y**: Remove pacotes inúteis.
    
- **sudo apt autoclean**: Limpa arquivos temporários de instalação.
    
- **df -h**: Checa o espaço livre em disco.
    
- **history | tail -n 10**: Vê os últimos 10 comandos usados.
    
- **clear (ou Ctrl + L)**: Limpa a tela do terminal.
    

#### Rede e Conexão Remota

- **ip a**: Mostra seu endereço de IP e interfaces de rede.
    
- **ssh -i [chave.pem] usuario@ip**: Acessa um servidor remoto.
    
- **chmod 400 [arquivo]**: Protege chaves SSH (permissão de leitura só para você).
    

#### Fluxo de Trabalho GitHub

- **git pull origin main**: Puxa as novidades do GitHub para o seu PC.
    
- **git add .**: Prepara todas as alterações para o envio.
    
- **git commit -m "mensagem"**: Registra a mudança com um título.
    
- **git push origin main**: Envia suas alterações para o GitHub.
    

---

### 💡 Atalhos de Teclado e Sinais Visuais

- **TAB (1x)**: Tenta completar o nome do comando ou arquivo.
    
- **TAB TAB (2x)**: Mostra todas as opções disponíveis que começam com aquelas letras.
    
- **Ctrl + C**: O botão de pânico. Cancela qualquer comando que esteja travado.
    
- **Nome com /**: No final do nome significa que é um **Diretório (Azul)**.
    
- **Nome sem /**: Significa que é um **Arquivo (Branco/Cinza)**.