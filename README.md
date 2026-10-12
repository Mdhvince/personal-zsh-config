# personal-zsh-config

Les réglages sont dans `~/.zsh`. Les fichiers `~/.zshrc`, `~/.zprofile` et `~/.zshenv` sont des liens vers ce dépôt : une seule copie à modifier.

## Installation

Installer Git et Zsh (`brew install git zsh` sur macOS, `sudo apt-get install git zsh` sur Ubuntu/Debian). Sur Windows, utiliser Linux/WSL, pas PowerShell.

`~/.zsh` doit être absent ou vide avant le clonage. Sauvegarder et renommer les fichiers de configuration existants avant de créer les liens. Ne pas recloner les dépendances déjà installées.

```bash
git clone https://github.com/Mdhvince/personal-zsh-config.git "$HOME/.zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting"
git clone https://github.com/marlonrichert/zsh-autocomplete.git "$HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete"

ln -s "$HOME/.zsh/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/.zsh/.zprofile" "$HOME/.zprofile"
ln -s "$HOME/.zsh/.zshenv" "$HOME/.zshenv"
```

Ouvrir un nouveau terminal Zsh. Les aliases `piu`, `pyinit` et l'éditeur `zed` nécessitent leurs outils respectifs ; ils ne sont pas installés par ce dépôt.

## Données privées

Les secrets et réglages propres à une machine restent dans **`~/.zshrc.local`**, chargé automatiquement s'il existe. Ce fichier est hors du dépôt et doit rester privé, avec les permissions `600`. Ne jamais le copier dans Git.

Oh My Zsh, ses plugins, Spaceship, les historiques et les caches ne sont pas versionnés ici.

## Mises à jour

Ce Mac publie les changements. Sur les autres machines :

```bash
cd "$HOME/.zsh"
git pull --ff-only
```

Ouvrir un nouveau terminal. Rien à recopier.
