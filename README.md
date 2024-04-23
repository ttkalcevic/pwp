# pwp - present working path plugin for Oh My Zsh

The `pwp` plugin provides a convenient way to display the present working path in the
terminal prompt and lists the current working directory along with its parent directories.
Additionally, it includes a custom command `..` to navigate to parent directories easily.

## Features

* List current working directory and its parent directories.
* Navigate to parent directories using the `..` command.

## Installation

### Prerequisites

[Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) should be installed on your system.

### Steps

1) Clone the Repository
```shell
git clone https://github.com/ttkalcevic/pwp.git ~/.oh-my-zsh/custom/plugins/pwp
```

2) Add plugin to your `~/.zshrc`
```shell
plugins=(
  # ... other plugins
  pwp
)
```

3) Apply changes
```shell
source ~/.zshrc
```


## Usage

### Display current and parent directories

Use the `pwp` command to display the current working directory and its parent directories:
```
$> pwp
*: /Users/tomislav/.oh-my-zsh/plugins/pwp
1: /Users/tomislav/.oh-my-zsh/plugins
2: /Users/tomislav/.oh-my-zsh
3: /Users/tomislav
4: /Users
5: /

```

### Navigating to Parent Directories

Present working directory (`pwd`) is listed first (`*:`), its parent is listed under 1 (first parent), and so on.
Root is listed as 5.

Use the `..` command (which is also part of this plugin) followed by the number of parent directories you want to 
navigate up. For example, if we want to navigate to `/Users/tomislav/.oh-my-zsh` we need to type in
```shell
$> .. 2
$> pwd
/Users/tomislav/.oh-my-zsh
```

## Customization
You can customize the appearance and behavior of the `pwp` plugin by modifying the `pwp` plugin file 
(`pwp.plugin.zsh`) located in `~/.oh-my-zsh/custom/plugins/pwp`.


## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please create an
issue or submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.



---
This plugin is "newer version" of my bash function that I created way back. 
Read more about on [Medium - Bash and directory positioning](https://medium.com/@ttkalcevic/bash-and-directory-positioning-34ab8a8b1c0d)
