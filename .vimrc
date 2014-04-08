" be (VI)iMproved
set nocompatible

set rtp=./vdebug

if has("clipboard")
  set clipboard=unnamed
elseif has("xterm_clipboard") && has("unnamedplus")
  set clipboard=unnamedplus
endif

let g:vdebug_options = {
    \ 'debug_file': 'vdebug.log',
    \ 'debug_file_level': 2,
    \ 'debug_window_level': 2,
    \ 'break_on_open': 1,
    \ 'path_maps': {'/vagrant': '/home/saji/src/vagrant-vdebug'},
    \ 'timeout': 20,
    \ 'ide_key': '',
    \ 'port': 9002,
    \ 'server': '' }
