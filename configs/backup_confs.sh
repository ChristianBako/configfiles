echo 'BACKING UP CONFS!'

NVIM=~/.config/nvim/init.vim
ZSH=~/.zshrc

for file_path in $NVIM $ZSH
do
        echo $file_path
        cp $file_path .
done

git add *
git add .*
git commit -m "Backing stuff up"
git push 
