## YouCompleteMe with vim

YCM is always a pain in the but because it needs vim to be installed with python 3.5+, which is not the default. To do this:

```sh
git clone https://github.com/vim/vim.git

cd vim

./configure --with-python3-command=python3 --enable-pythoninterp=yes --enable-python3interp=yes

make -j `nproc`

sudo make install -j `nproc`
```

Then go to the dir where YCM is installed:

```sh
git submodule update --init --recursive

./install.py --all
```
