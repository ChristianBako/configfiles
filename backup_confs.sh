echo 'BACKING UP CONFS!'

HOME=~
NVIM=$HOME/.conf/nvim/init.vim
ZSH=~/.zshrc

backup=($ZSH $NVIM)

for file_path in $backup
do
        echo $file_path
        cp $file_path .
done

git add *
git commit -m "Backing stuff up"
git push 
