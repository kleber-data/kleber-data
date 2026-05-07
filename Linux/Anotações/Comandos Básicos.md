

-#### 🧭 Navegação e Localização (Onde estou?)

- **pwd**: (Print Working Directory) Mostra o caminho completo de onde você está.
    
- **ls**: Lista os arquivos e pastas do diretório atual.
    
- **ls -l**: Lista com detalhes (permissões, dono e tamanho).
    
- **ls -lt | head -n 5**: Mostra os últimos 5 arquivos modificados (bom para retomar o foco).
    
- **cd /**: Vai para a Raiz do sistema.
    
- **cd ~**: Volta para a sua pasta pessoal (`/home/kleber`).
    
- **cd ..**: Volta uma pasta para trás.
    
- **cd ../[nome]**: Volta uma pasta e já entra em outra.
    

#### 📂 Manipulação de Arquivos e Pastas

- **mkdir**: Cria uma nova pasta.
    
- **mkdir -p**: Cria pastas em cascata (ex: `Linux/Notas/Certificados`).
    
- **touch**: Cria um arquivo vazio (ex: `aula04.md`).
    
- **cp**: Copia um arquivo.
    
- **cp -r**: Copia uma pasta inteira.
    
- **mv**: Move ou Renomeia um arquivo/pasta.
    
- **rm**: Apaga um arquivo. **(Cuidado: sem lixeira!)**
    
- **rm -rf**: Apaga uma pasta e tudo dentro dela à força.
    

#### 🛠️ Administração e Manutenção (O "Checkup" do ThinkPad)

- **sudo**: Executa comandos como administrador.
    
- **sudo apt update**: Atualiza a lista de repositórios.
    
- **sudo apt upgrade -y**: Instala as atualizações de fato.
    
- **sudo apt autoremove -y**: Remove pacotes inúteis.
    
- **sudo apt autoclean**: Limpa arquivos temporários de instalação.
    
- **df -h**: Checa o espaço livre em disco.
    
- **history | tail -n 10**: Vê os últimos 10 comandos usados.
    
- **clear** (ou **Ctrl + L**): Limpa a tela do terminal.
    

#### 🌐 Rede e Conexão Remota

- **ip a**: Mostra seu endereço de IP e interfaces de rede.
    
- **ssh -i [chave.pem] usuario@ip**: Acessa um servidor remoto.
    
- **chmod 400 [arquivo]**: Protege chaves SSH (permissão de leitura só para você).
    

#### 🚀 Fluxo de Trabalho GitHub

- **git pull origin main**: Puxa as novidades do GitHub para o seu PC.
    
- **git add .**: Prepara todas as alterações para o envio.
    
- **git commit -m "mensagem"**: Registra a mudança com um título.
    
- **git push origin main**: Envia suas alterações para o GitHub.