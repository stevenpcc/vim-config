# Vim Config Setup

### 1. Remove the old default config

```bash
sudo mv /etc/vim /etc/vim_original
```

### 2. Clone into the main repo

```bash
sudo git clone https://github.com/stevenpcc/vim-config /etc/vim/
```

### 3. Install the plugins
Plugins must be installed for each user

```vim
:PlugInstall
```

# Updating 

### Use the latest commit

```bash
sudo git -C /etc/vim pull
```

### Update the plugins

```vim
:PlugUpdate
```

This repo will provide an upgraded Plug so there is no need to use :PlugUpgrade
