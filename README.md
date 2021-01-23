## Normal vim 

```
rm -rf ~/.vim
rm ~/.vimrc

git clone https://github.com/Jovian-Dsouza/.my_vim

cp  .my_vim/.vimrc .
mkdir -p ~/.vim/undodir

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Install for vim-ros
`sudo apt-get install vim-nox-py2`
```

then run the following in Vim 
```
:PlugInstall
```

 
#### Tips

`source %` for sourcing the current file in vim 
