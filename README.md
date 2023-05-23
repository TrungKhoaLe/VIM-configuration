# **Notes**

1. I couldn't install Viminspector with the current Vim version on my MacOS, so I followed this best practice to upgrade/change the version of Vim

:link: [StackOverFlow](https://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x)

```
$ # Create the directories you need
$ sudo mkdir -p /opt/local/bin
$ # Download, compile, and install the latest Vim
$ cd ~
$ hg clone https://bitbucket.org/vim-mirror/vim or git clone https://github.com/vim/vim.git
$
$ cd vim
$ ./configure --prefix=/opt/local --enable-python3interp
$ make
$ sudo make install
$ # Add the binary to your path, ahead of /usr/bin
$ echo 'PATH=/opt/local/bin:$PATH' >> ~/.bash_profile
$ # Reload bash_profile so the changes take effect in this window
$ source ~/.bash_profile
```
I modified and added ```--enable-python3interp``` so that Vim was installed with +python3
