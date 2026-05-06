

- **ip a**: Abreviação de `ip address`. Lista todas as interfaces de rede (como Wi-Fi e Ethernet) e seus respectivos endereços IP. É o comando moderno que substituiu o antigo `ifconfig`.
    
- **cd /**: Move você para o Diretório Raiz (o topo da hierarquia do sistema). No Linux, tudo começa no `/`.
    
- **ls**: Lista os arquivos e pastas do diretório atual. É o comando que você mais vai usar para saber "onde está".
    
- **ls -l**: Lista os arquivos com detalhes, mostrando permissões, dono do arquivo e tamanho. Útil para checar quem pode ler seus dados.
    
- **ssh -i**: Especifica o arquivo de chave privada (ex: `chave.pem`) para autenticação em servidores remotos. (lembre-se que o comando `ssh -i` só funcionará se o arquivo estiver em uma partição Linux)
-
- **ssh usuario@ip**: Estrutura padrão para conectar a um servidor remoto. Onde `usuario` é o login de destino e `ip` é o endereço da máquina.
    
- **chmod 400**: Restringe a permissão de um arquivo apenas para leitura do proprietário. Essencial para proteger chaves SSH.
    
- **cp**: Copia arquivos ou diretórios de um local para outro. Útil para mover chaves de dispositivos externos para a pasta local.
  
- **mkdir**: (make directory) Cria uma nova pasta. Ex: `mkdir estudos-linux`.
    
- **mkdir -p**: Cria uma estrutura de pastas em cascata (pastas dentro de pastas) de uma só vez. Ex: `mkdir -p Linux/Notas/Certificados`.
    
- **mv**: (move) Move um arquivo ou pasta de um lugar para outro. Também é o comando usado para **renomear**.
    
    - _Mover:_ `mv nota.md ~/Documentos`
        
    - _Renomear:_ `mv nome_antigo.md nome_novo.md`
        
- **cp**: (copy) Copia um arquivo. Ex: `cp arquivo.txt arquivo_backup.txt`.
    
- **cp -r**: Copia uma **pasta inteira** e todo o seu conteúdo (recursivo). Ex: `cp -r kleber-data backup-dados`.
    
- **rm**: (remove) Apaga um arquivo. **Cuidado:** Não vai para a lixeira.
    
- **rm -rf**: Apaga uma pasta e tudo o que estiver dentro dela à força. É o comando "limpa tudo".
    
- **touch**: Cria um arquivo vazio rapidamente. Muito usado para iniciar scripts ou notas. Ex: `touch aula04.md`.

- **Ctrl + L**  = **clear**: o comando clear limpa o terminal ou pode-se usar Ctrl + L.

###  🚀 Checklist Diário: Início de Pomodoro

- **cd ~/**: Move você para o diretório a sua escolha.
    
- **git pull origin main**: Sincroniza seu repositório local com o GitHub para evitar conflitos.
    
- **ls -lt | head -n 5**: Mostra os últimos 5 arquivos modificados para você retomar o foco rapidamente.
    
- **clear**: Limpa o terminal, deixando o ambiente pronto para uma nova tarefa.
    

---

### 🧹 Manutenção e Atualização do Sistema

Execute estes comandos para manter o sistema rápido e seguro. No Linux, a saúde do sistema depende dessa manutenção de pacotes.

- **sudo apt update**: Atualiza a lista de repositórios (verifica se há novidades).
    
- **sudo apt upgrade -y**: Baixa e instala as atualizações de segurança e software.
    
- **sudo apt autoremove -y**: Remove bibliotecas e pacotes que não são mais utilizados por nenhum programa.
    
- **sudo apt autoclean**: Limpa arquivos de instalação temporários que ficam ocupando espaço em disco.
    

---

### 🛠️ Comandos de Suporte e Diagnóstico

- **sudo**: Comando para executar tarefas como administrador (necessário para atualizações).
    
- **&&**: Operador lógico que encadeia comandos (executa o próximo apenas se o anterior tiver sucesso).
    
- **history | tail -n 10**: Mostra os últimos 10 comandos que você digitou (ótimo para consultas rápidas).
    
- **df -h**: Exibe o espaço livre em disco de forma legível (importante para quem trabalha com grandes datasets).