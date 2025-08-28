# dotfiles
My Dotfiles - Gerenciado com chezmoi

## 📦 Configurações Incluídas

### Arquivos sem criptografia
- `~/.gitconfig` - configuração global do Git
- `~/.config/git/` - configurações adicionais do Git  
- `~/.config/mise/` - gerenciador de versões de linguagens
- `~/.config/copyq/` - gerenciador de clipboard
- `~/.XCompose` - composição de caracteres

### Arquivos com criptografia (age)
- `~/.bashrc` - configuração do bash
- `~/.bash_history` - histórico do bash
- `~/.ssh/config` - configuração SSH
- `~/.pgpass` - senhas do PostgreSQL
- `~/.config/JetBrains/` - configurações e consoles SQL do DataGrip
- `~/.local/share/remmina/` - conexões RDP

## 🚀 Como aplicar em uma nova instalação

### 1. Instalar dependências básicas
```bash
# Arch Linux
sudo pacman -S chezmoi age git
```

### 2. Configurar chave age (IMPORTANTE!)
```bash
# Criar diretório para a chave
mkdir -p ~/.config/age

# Gerar nova chave age ou copiar a existente
age-keygen -o ~/.config/age/keys.txt

# IMPORTANTE: Salve a chave em um local seguro!
# Você precisará da mesma chave para descriptografar os arquivos
```

### 3. Inicializar e aplicar dotfiles
```bash
# Clonar e aplicar as configurações
chezmoi init --apply https://github.com/SEU_USUARIO/dotfiles.git

# Ou se preferir em etapas:
chezmoi init https://github.com/SEU_USUARIO/dotfiles.git
chezmoi diff  # verificar mudanças
chezmoi apply # aplicar configurações
```

### 4. Verificar configurações
```bash
# Ver status das configurações
chezmoi status

# Atualizar do repositório
chezmoi update
```

## 🔐 Gerenciamento de Arquivos Criptografados

Para adicionar novos arquivos sensíveis com criptografia:
```bash
chezmoi add --encrypt ~/.arquivo_sensivel
```

Para editar arquivos criptografados:
```bash
chezmoi edit ~/.arquivo_sensivel
```

## ⚠️ Notas Importantes

1. **Backup da chave age**: A chave em `~/.config/age/keys.txt` é essencial para descriptografar seus arquivos. Faça backup em local seguro!

2. **Recipient age**: O recipient configurado é `age1l6j2zcz0wxqvp6tyf5xgpvq8jka64aatc8d56l64gl9q45yj4ctqeew9j9`

3. **Git**: Certifique-se de configurar seu usuário git após aplicar:
```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
```
