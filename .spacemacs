;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     markdown
     ;; csv
     ;; javascript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; chinese
     auto-completion
     ;; ranger
     ;; better-defaults
     ;; ruby-on-rails
     ;; django
     ivy
     ;; emacs-lisp
     ;; osx
     ;; html
     ;; ruby
     ;; (ruby :variables ruby-version-manager 'rvm)
     ;; (ruby :variables ruby-enable-enh-ruby-mode t)
     python
     ;; ess
     c-c++
     git
     ;; javascript
     ;; latex
     ;; (latex :variables latex-build-command "LaTeX")
     ;; (latex :variables latex-enable-auto-fill nil)
     extra-langs
     ibuffer
     ;; tabbar
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages
   '((vue-mode :location (recipe :fetcher github :repo "codefalling/vue-mode")))
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         spacemacs-dark
                         dracula
                         solarized-dark
                         spacemacs-light
                         solarized-light
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Menlo"
                               :size 20
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache ;
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   js2-basic-offset 2
   js-indent-level 2
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;; (custom-set-variables
  ;;  '(matlab-shell-command-switches '("-nodesktop -nosplash")))
  ;; (add-hook 'matlab-mode-hook 'auto-complete-mode)
  ;; (setq auto-mode-alist
  ;;       (cons
  ;;        '("\\.m$" . matlab-mode)
  ;;        auto-mode-alist))
  ;; (add-to-list 'default-frame-alist '(height . 80))
  ;; (add-to-list 'default-frame-alist '(width . 120))
  (require 'server)
  (unless (server-running-p)
    (server-start)))

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun my-scroll-line-up ()
  "scroll 10 line up"
  (interactive)
  (evil-scroll-line-up 10))

(defun my-scroll-line-down ()
  "scroll 10 line up"
  (interactive)
  (evil-scroll-line-down 10))
(defun open-eshell-below ()
  "as function name"
  (interactive)
  (split-window-below)
  (evil-window-down 1)
  (eshell))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ; set underscore as part of a word
  (use-package vue-mode)
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  (add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'matlab-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (global-hl-line-mode) ; enable current line highlight
  (global-linum-mode) ; Show line numbers by default
  (setq column-number-mode t)
  (global-evil-mc-mode) ; enable evil-mc
  (global-company-mode)
  (global-superword-mode)
  ;; (global-flycheck-mode)
  ;; (golden-ratio-mode)
  (global-set-key (kbd "C-x x") 'call-last-kbd-macro)
  (add-hook 'doc-view-mode-hook 'auto-revert-mode) ; full-document preview
  (setq magit-push-always-verify t)
  (define-key evil-normal-state-map (kbd "s-t") 'spacemacs/new-empty-buffer)
  (define-key evil-normal-state-map (kbd "SPC SPC") 'evil-avy-goto-word-or-subword-1)
  (define-key evil-normal-state-map (kbd "C-h") 'previous-buffer)
  (define-key evil-normal-state-map (kbd "C-l") 'next-buffer)
  (define-key evil-normal-state-map (kbd "<s-up>") (kbd "10 C-y"))
  (define-key evil-normal-state-map (kbd "<s-down>") (kbd "10 C-e"))
  (define-key evil-normal-state-map (kbd "C-u") 'my-scroll-line-up)
  (define-key evil-normal-state-map (kbd "C-d") 'my-scroll-line-down)
  (define-key evil-visual-state-map (kbd "s-d") 'evil-mc-make-and-goto-next-match)
  (define-key evil-normal-state-map (kbd "s-d") 'evil-mc-make-and-goto-next-match)
  (define-key evil-normal-state-map (kbd "SPC \'") 'open-eshell-below)
  (define-key evil-insert-state-map (kbd "<backtab>") 'indent-for-tab-command)
  ;; (define-key evil-normal-state-map (kbd "w") 'evil-forward-WORD-begin)
  (define-key evil-normal-state-map (kbd "W") 'forward-word)
  ;; (define-key evil-normal-state-map (kbd "b") 'evil-backward-WORD-begin)
  (define-key evil-normal-state-map (kbd "B") 'backward-word)
  ;; (define-key evil-normal-state-map (kbd "e") 'evil-forward-WORD-end)
  ;; (define-key evil-normal-state-map (kbd "E") 'evil-forward-word-end)
  ;; (setq-default evil-escape-key-sequence "gh")
  (global-set-key [(meta shift up)]  'move-line-up)
  (global-set-key [(meta shift down)]  'move-line-down)
  (set-face-attribute 'default nil :family "Menlo")
  (set-face-attribute 'default nil :height 200)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  (setq-default tab-width 4)
  (setq scroll-step 1)
  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-indent-style 2)
    )
  (add-hook 'web-mode-hook  'my-web-mode-hook)
  ;; add matlab-emacs integration
  ;; (add-to-list 'load-path "~/Documents/MATLAB/matlab-emacs")
  ;; (load-library "matlab-load")
  ;; (matlab-cedet-setup)
  (setq matlab-indent-function t)
  (setq matlab-shell-command "/Applications/MATLAB_R2015a.app/bin/matlab")
  (matlab-cedet-setup)
  (setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))
  ;; Org mode setting
  (setq org-startup-indented t)
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (sh . t)
     (python . t)
     ))
)


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-Y-yank-to-eol t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/church.org" "~/Dropbox/org/work.org")))
 '(package-selected-packages
   (quote
    (wgrep smex ivy-hydra counsel-projectile counsel swiper ivy winum fuzzy vue-mode mmm-mode markdown-toc markdown-mode gh-md csv-mode powerline spinner hydra parent-mode projectile pkg-info epl flx smartparens iedit anzu evil goto-chg undo-tree highlight diminish bind-map bind-key packed f dash s helm avy helm-core async popup package-build yapfify wolfram-mode web-mode web-beautify thrift tagedit stan-mode smeargle slim-mode scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder rbenv rake qml-mode pyvenv pytest pyenv-mode py-isort pug-mode pony-mode pip-requirements pbcopy osx-trash osx-dictionary orgit org minitest matlab-mode magit-gitflow livid-mode skewer-mode simple-httpd live-py-mode less-css-mode launchctl julia-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc ibuffer-projectile hy-mode helm-pydoc helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor enh-ruby-mode emmet-mode cython-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-auctex company-anaconda company coffee-mode chruby bundler inf-ruby auto-yasnippet yasnippet auctex arduino-mode anaconda-mode pythonic ac-ispell auto-complete ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
