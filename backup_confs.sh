echo 'BACKING UP CONFS!'

NVIM=~/.conf/nvim/init.vim
ZSH=~/.zshrc

backup=($ZSH $NVIM)

for file_path in NVIM ZSH
do
        echo $file_path
        cp $file_path .
done

git add *
git add .*
git commit -m "Backing stuff up"
git push 
