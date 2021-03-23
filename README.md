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
![Screenshot_20210311_132505]![screenshot](https://user-images.githubusercontent.com/37713376/112202774-0ff5d080-8c12-11eb-846e-cd0b0fe0c01f.png)


