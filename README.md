vim-veryvisual: Use GVim instead of Vim, if that is possible
============================================================

I often type `vim` to open a file but what I really want is GVim to pop
up. Yes, I prefer GVim to Vim. I really tried to learn to type `gvim`
but my muscle memory does not let me win. This plugin detects when it is
possible to use GVim instead of Vim and automatically opens GVim for me.

There are cases in which I type `vim` and I really want to use text-mode
Vim, for example when I am accessing another computer over SSH or when
I am not in X. This plugin is smart enough to understand that in those
cases it should not switch over to GVim.


Installation
------------

Use pathogen:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/gioele/vim-veryvisual.git


License
-------

This is free software released into the public domain (CC0 license).

See the `COPYING.CC0` file or <http://creativecommons.org/publicdomain/zero/1.0/>
for more details.
