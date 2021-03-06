"
"  .vimrc -- my personal VIM configuration
"            see http://github.com/Falkor/dotfiles
"
"  Copyright (c) 2010 Sebastien Varrette <Sebastien.Varrette@uni.lu>
"                http://varrette.gforge.uni.lu
"
"             _
"      __   _(_)_ __ ___  _ __ ___
"      \ \ / / | '_ ` _ \| '__/ __|
"       \ V /| | | | | | | | | (__
"      (_)_/ |_|_| |_| |_|_|  \___|
"
"
" To be reworked... for instance using
"   http://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc
"
" /etc/vim/vimrc ou ~/.vimrc
" Fichier de configuration de Vim
" Formation Debian GNU/Linux par Alexis de Lattre
" http://www.via.ecp.fr/~alexis/formation-linux/

" ':help options.txt' ou ':help nom_du_param�tre' dans Vim
" pour avoir de l'aide sur les param�tres de ce fichier de configuration

" Avertissement par flash (visual bell) plut�t que par beep
set vb

" Encoding
set enc=iso-8859-1

" Active la coloration syntaxique
syntax on
" Utiliser le jeu de couleurs standard
colorscheme default
set background=dark

" Affiche la position du curseur 'ligne,colonne'
set ruler
" Affiche une barre de status en bas de l'�cran
set laststatus=2
" Contenu de la barre de status
set statusline=%<%f%h%m%r%=%l,%c\ %P

" Largeur maxi du texte ins�r�
" '72' permet de wrapper automatiquement � 72 caract�res
" '0' d�sactive la fonction
set textwidth=0

" Wrappe � 72 caract�res avec la touche '#'
map # {v}! par 72
" Wrappe et justifie � 72 caract�res avec la touche '@'
map @ {v}! par 72j

" Ne pas assurer la compatibilit� avec l'ancien Vi
set nocompatible
" Nombre de colonnes
"set columns=80
" Nombre de commandes dans l'historique
set history=50
" Options du fichier ~/.viminfo
set viminfo='20,\"50
" Active la touche Backspace
set backspace=2
" Autorise le passage d'une ligne � l'autre avec les fl�ches gauche et droite
set whichwrap=<,>,[,]
" Garde toujours une ligne visible � l'�cran au dessus du curseur
set scrolloff=1
" Affiche les commandes dans la barre de status
set showcmd
" Affiche la paire de parenth�ses
set showmatch
" Essaye de garder le curseur dans la m�me colonne quand on change de ligne
set nostartofline
" Option de la compl�tion automatique
set wildmode=list:full
" Par d�faut, ne garde pas l'indentation de la ligne pr�c�dente
" quand on commence une nouvelle ligne
set noautoindent
" Options d'indentation pour un fichier C
set cinoptions=(0

" xterm-debian est un terminal couleur
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

" Quand on fait de la programmation, on veut qu'il n'y ait jamais de
" vraies tabulations ins�r�es mais seulement 4 espaces
autocmd BufNewfile,BufRead *.c set expandtab
autocmd BufNewfile,BufRead *.c set tabstop=4
autocmd BufNewfile,BufRead *.h set expandtab
autocmd BufNewfile,BufRead *.h set tabstop=4
autocmd BufNewfile,BufRead *.cpp set expandtab
autocmd BufNewfile,BufRead *.cpp set tabstop=4

" D�commentez les 2 lignes suivantes si vous voulez avoir les tabulations et
" les espaces marqu�s en caract�res bleus
"set list
"set listchars=tab:>-,trail:-

" Les recherches ne sont pas 'case sensitives'
set ignorecase
" Mettre en surlign� les expressions recherch�es
set hlsearch

" Fichier d'aide
set helpfile=$VIMRUNTIME/doc/help.txt.gz

" Le d�coupage des folders se base sur l'indentation
set foldmethod=indent
" 12 niveaux d'indentation par d�faut pour les folders
set foldlevel=12

" Police de caract�re pour Gvim qui supporte le symbole euro
set guifont=-misc-fixed-medium-r-semicondensed-*-*-111-75-75-c-*-iso8859-15
