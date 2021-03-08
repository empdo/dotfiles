# dotfiles

Installation:

Set this in your bash or zsh config:
~~~ sh
$ alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
~~~

Clone the repository:
~~~ sh
$ git clone --bare https://github.com/empdo/dotfiles $HOME/dotfiles
~~~

To checkout the files to your $HOME run:
~~~ sh
$ config checkout
~~~

Set this:
~~~ sh
$ config config --local status.showUntrackedFiles no
~~~
