vagrant-vdebug
==============

Reproduction of vdebug bug

https://github.com/joonty/vdebug/issues/137

Steps to reproduce:

```sh
vagrant up
git submodule init
git submodule update
vim -u .vimrc index.php +:VdebugStart
xdg-open http://192.168.13.102/
```
