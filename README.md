# Erik Holman: the Dotfiles

<details>
<summary><strong>APPS TO INSTALL</strong></summary>

- [iTerm2](https://iterm2.com/downloads.html)
</details>

---

<details>
<summary><strong>TOOLS TO INSTALL</strong></summary>

### Xcode command line tools

```bash
$ xcode-select --install
```

### Powerlevel 10k

```bash
$ cd ~
$ git clone https://github.com/romkatv/powerlevel10k.git
```

### OhMyZsh

```bash
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Homebrew

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### AWS Rotate Key

```bash
$ brew install aws-rotate-key
```

### Grab my prefs / establish dev folder

```bash
# Setup dev folder '~/development'
$ cd ~
$ mkdir development
$ cd development

# Copy prefs from my github
$ git clone https://github.com/ErikHolman/Erik-Holman-the-Dotfiles.git
```

### [NodeJS](https://nodejs.org/en/)

```bash
# Run a cleanup
$ npm config set prefix /usr/local
```

</details>
