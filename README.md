## DotEmacs

Only Emacs 24 supported.

### Installation

##### 1. Install the dotfile and its submodules #####

```bash
$ git clone git://github.com/zy/dotfiles-for-emacs.git ~/dotemacs
$ git submodule sync
$ git submodule update --init --recursive
$ ln -ns ~/dotemacs ~/.emacs.d
```

##### 2. Ack! #####

[Ack](http://betterthangrep.com/) is a tool like grep, optimized for
programmers. Click [here](http://betterthangrep.com/install/) for the
wizard.

Ubuntu
```
sudo apt-get install ack-grep
```

##### 3. Ctags #####

[ctags](http://ctags.sourceforge.net/) help you to quickly and easily
locate method, constant while programming.

Ubuntu
```
sudo apt-get install ctags
```

##### 4. Markdown(*optional*) #####

For preview the markdown doc(markdown-preview), you may need this.

Ubuntu
```
sudo apt-get install markdown
```

##### 5. Rsense #####
[Rsense](http://cx4a.org/software/rsense/manual.html) is a very smart
code-completing plugin for coding ruby programs.

- Install JRE: Both Oracle JDK and OpenJDK are supported.
- Install Rsense: Download and extract the package to some where you want.
- Setting for Emacs: Add RSENSE_HOME environment variable to your system.

