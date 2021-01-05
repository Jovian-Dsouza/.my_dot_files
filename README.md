## Normal vim 

```
sudo rm -r ~/.vim
sudo rm ~/.vimrc
mkdir -p ~/.vim/undodir

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

then run the following in Vim 
```
:PlugInstall
```

 
#### Tips

`source %` for sourcing the current file in vim 