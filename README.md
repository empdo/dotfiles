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


Set the correct monitor in polybar/config,
use this to get the correct name of monitor:
~~~ sh
$ xrandr -q | grep " connected" | cut -d ' ' -f1
~~~
![Screenshot_20210311_132505](https://user-images.githubusercontent.com/37713376/110790443-5261f980-8271-11eb-9163-bbad4a047b47.png)

