#!/bin/sh

rm ../.emacs
rm ../.emacs.el
ln -s -T  ~/home-settings-work/.emacs_work  ../.emacs

rm ../.emacs.d
ln -s -T ~/.emacs_work.d  ../.emacs.d




