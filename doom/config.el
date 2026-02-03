;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                                                                          ║
;; ║   ██████╗  ██████╗  ██████╗ ███╗   ███╗    ███████╗███╗   ███╗ █████╗    ║
;; ║   ██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║    ██╔════╝████╗ ████║██╔══██╗   ║
;; ║   ██║  ██║██║   ██║██║   ██║██╔████╔██║    █████╗  ██╔████╔██║███████║   ║
;; ║   ██║  ██║██║   ██║██║   ██║██║╚██╔╝██║    ██╔══╝  ██║╚██╔╝██║██╔══██║   ║
;; ║   ██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║    ███████╗██║ ╚═╝ ██║██║  ██║   ║
;; ║   ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝    ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝   ║
;; ║                                                                          ║
;; ║              Web & System Development Configuration                      ║
;; ║                    ~ Catppuccin Frappe Edition ~                         ║
;; ║                                                                          ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;;; ============================================================================
;;; PERSONAL INFORMATION
;;; ============================================================================

(setq user-full-name "Alexander Fuchs"
      user-mail-address "alex.fuchs@pawbies.net")

;;; ============================================================================
;;; FONTS - JetBrains Mono with Ligatures
;;; ============================================================================

(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 14 :weight 'medium)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 20 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font" :size 14 :weight 'medium)
      doom-unicode-font (font-spec :family "FiraCode Nerd Font" :size 14)
      doom-serif-font (font-spec :family "FiraCode Nerd Font" :size 14 :weight 'medium))

;; Enable JetBrains Mono ligatures
(setq +ligatures-in-modes '(not special-mode comint-mode eshell-mode term-mode
                            vterm-mode Info-mode))

;; Extra ligatures for programming
(setq +ligatures-extras-in-modes '(org-mode))

;; Custom ligatures for different languages
(after! ligature
  (ligature-set-ligatures 'prog-mode
                          '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                            ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                            "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                            "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                            "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                            "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                            "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                            "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                            ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                            "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                            "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                            "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                            "\\\\" "://")))

;;; ============================================================================
;;; THEME - Catppuccin Frappe
;;; ============================================================================

(setq doom-theme 'catppuccin)
(setq catppuccin-flavor 'frappe)

;; Enhance theme colors
(after! catppuccin-theme
  (custom-set-faces!
    ;; Make comments slightly brighter for readability
    `(font-lock-comment-face :foreground ,(catppuccin-get-color 'overlay1) :slant italic)
    `(font-lock-doc-face :foreground ,(catppuccin-get-color 'overlay2) :slant italic)
    ;; Enhanced keywords
    `(font-lock-keyword-face :foreground ,(catppuccin-get-color 'mauve) :weight bold)
    ;; Vibrant strings
    `(font-lock-string-face :foreground ,(catppuccin-get-color 'green))
    ;; Function names pop
    `(font-lock-function-name-face :foreground ,(catppuccin-get-color 'blue) :weight bold)
    ;; Types are distinct
    `(font-lock-type-face :foreground ,(catppuccin-get-color 'yellow))
    ;; Variables
    `(font-lock-variable-name-face :foreground ,(catppuccin-get-color 'text))
    ;; Constants stand out
    `(font-lock-constant-face :foreground ,(catppuccin-get-color 'peach))))

;;; ============================================================================
;;; UI ENHANCEMENTS - Making Everything Beautiful
;;; ============================================================================

;; Line numbers - relative for vim muscle memory
(setq display-line-numbers-type 'relative)

;; Smooth scrolling
(setq scroll-margin 8
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-preserve-screen-position t
      auto-window-vscroll nil
      fast-but-imprecise-scrolling nil)

;; Pixel-perfect scrolling (Emacs 29+)
(when (fboundp 'pixel-scroll-precision-mode)
  (pixel-scroll-precision-mode 1))

;; Window dividers - subtle but visible
(setq window-divider-default-right-width 2
      window-divider-default-bottom-width 2
      window-divider-default-places t)
(window-divider-mode 1)

;; Frame settings
(add-to-list 'default-frame-alist '(alpha-background . 97)) ; Slight transparency
(add-to-list 'default-frame-alist '(internal-border-width . 12))
(add-to-list 'default-frame-alist '(undecorated-round . t)) ; Rounded corners (macOS)

;; Fancy titlebar
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))
        " — Doom Emacs"))

;; Cursor settings
(setq-default cursor-type 'bar)
(setq blink-cursor-mode t
      blink-cursor-blinks 0
      blink-cursor-interval 0.5)

;; Highlight current line with subtle color
(setq hl-line-sticky-flag nil)

;; Better fringe indicators
(setq-default left-fringe-width 8
              right-fringe-width 8)

;;; ============================================================================
;;; MODELINE - Clean & Informative
;;; ============================================================================

(after! doom-modeline
  (setq doom-modeline-height 32
        doom-modeline-bar-width 4
        doom-modeline-hud nil
        doom-modeline-window-width-limit 85
        doom-modeline-project-detection 'auto
        doom-modeline-buffer-file-name-style 'truncate-upto-project
        doom-modeline-icon t
        doom-modeline-major-mode-icon t
        doom-modeline-major-mode-color-icon t
        doom-modeline-buffer-state-icon t
        doom-modeline-buffer-modification-icon t
        doom-modeline-lsp-icon t
        doom-modeline-time-icon t
        doom-modeline-time-live-icon t
        doom-modeline-unicode-fallback nil
        doom-modeline-enable-word-count nil
        doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode)
        doom-modeline-buffer-encoding nil
        doom-modeline-indent-info nil
        doom-modeline-total-line-number nil
        doom-modeline-vcs-max-length 20
        doom-modeline-vcs-display-function #'doom-modeline-vcs-name
        doom-modeline-check-simple-format nil
        doom-modeline-number-limit 99
        doom-modeline-workspace-name t
        doom-modeline-persp-name t
        doom-modeline-display-default-persp-name nil
        doom-modeline-persp-icon t
        doom-modeline-lsp t
        doom-modeline-modal t
        doom-modeline-modal-icon t
        doom-modeline-modal-modern-icon t
        doom-modeline-gnus nil
        doom-modeline-github nil
        doom-modeline-mu4e nil
        doom-modeline-irc nil
        doom-modeline-battery nil
        doom-modeline-time nil
        doom-modeline-env-version t
        doom-modeline-env-load-string "..."
        doom-modeline-before-update-env-hook nil
        doom-modeline-after-update-env-hook nil))

;;; ============================================================================
;;; DASHBOARD - Stylish Welcome Screen
;;; ============================================================================

(setq fancy-splash-image (concat doom-user-dir "banner.png"))

(setq +doom-dashboard-banner-padding '(0 . 2))

(setq +doom-dashboard-functions
      '(doom-dashboard-widget-banner
        doom-dashboard-widget-shortmenu
        doom-dashboard-widget-loaded
        doom-dashboard-widget-footer))

(setq +doom-dashboard-menu-sections
      '(("Find file" :icon (nerd-icons-faicon "nf-fa-file_o" :face 'doom-dashboard-menu-title)
         :action find-file)
        ("Recent files" :icon (nerd-icons-faicon "nf-fa-history" :face 'doom-dashboard-menu-title)
         :action recentf-open-files)
        ("Projects" :icon (nerd-icons-octicon "nf-oct-project" :face 'doom-dashboard-menu-title)
         :action projectile-switch-project)
        ("Config" :icon (nerd-icons-faicon "nf-fa-cogs" :face 'doom-dashboard-menu-title)
         :action doom/open-private-config)
        ("Bookmarks" :icon (nerd-icons-faicon "nf-fa-bookmark" :face 'doom-dashboard-menu-title)
         :action bookmark-jump)))

;;; ============================================================================
;;; TREEMACS - File Explorer
;;; ============================================================================

(after! treemacs
  (setq treemacs-width 35
        treemacs-position 'left
        treemacs-is-never-other-window t
        treemacs-indentation 2
        treemacs-git-mode 'deferred
        treemacs-collapse-dirs 3
        treemacs-show-hidden-files t
        treemacs-icons-dired-mode t
        treemacs-follow-mode t
        treemacs-filewatch-mode t
        treemacs-fringe-indicator-mode 'always)

  ;; Use nerd icons
  (treemacs-load-theme "nerd-icons")

  ;; Custom colors for git status
  (setq treemacs-git-added-face 'font-lock-string-face
        treemacs-git-modified-face 'font-lock-function-name-face
        treemacs-git-conflict-face 'error))

;;; ============================================================================
;;; INDENT GUIDES - Subtle Visual Hierarchy
;;; ============================================================================

(after! highlight-indent-guides
  (setq highlight-indent-guides-method 'character
        highlight-indent-guides-character ?│
        highlight-indent-guides-responsive 'top
        highlight-indent-guides-auto-character-face-perc 15
        highlight-indent-guides-auto-top-character-face-perc 40))

;;; ============================================================================
;;; VERSION CONTROL - Pretty Git Indicators
;;; ============================================================================

(after! git-gutter-fringe
  (setq-default fringes-outside-margins t)
  ;; Thin fringe bitmaps
  (define-fringe-bitmap 'git-gutter-fr:added [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:modified [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240] nil nil 'bottom))

;;; ============================================================================
;;; LSP - Language Server Protocol Configuration
;;; ============================================================================

(after! lsp-mode
  (setq lsp-idle-delay 0.5
        lsp-log-io nil
        lsp-completion-provider :capf
        lsp-completion-show-detail t
        lsp-completion-show-kind t
        lsp-headerline-breadcrumb-enable t
        lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols)
        lsp-headerline-breadcrumb-icons-enable t
        lsp-lens-enable t
        lsp-semantic-tokens-enable t
        lsp-enable-symbol-highlighting t
        lsp-enable-text-document-color t
        lsp-modeline-code-actions-enable t
        lsp-modeline-diagnostics-enable t
        lsp-signature-auto-activate t
        lsp-signature-render-documentation t
        lsp-eldoc-enable-hover t
        lsp-eldoc-render-all nil
        lsp-enable-snippet t
        lsp-enable-folding t
        lsp-enable-imenu t
        lsp-enable-on-type-formatting nil
        lsp-before-save-edits t))

(after! lsp-ui
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-position 'at-point
        lsp-ui-doc-delay 0.5
        lsp-ui-doc-max-width 100
        lsp-ui-doc-max-height 20
        lsp-ui-doc-include-signature t
        lsp-ui-doc-show-with-cursor t
        lsp-ui-doc-show-with-mouse nil
        lsp-ui-doc-header t
        lsp-ui-doc-border (face-foreground 'default)
        lsp-ui-sideline-enable t
        lsp-ui-sideline-show-hover nil
        lsp-ui-sideline-show-diagnostics t
        lsp-ui-sideline-show-code-actions t
        lsp-ui-sideline-update-mode 'line
        lsp-ui-sideline-delay 0.5
        lsp-ui-peek-enable t
        lsp-ui-peek-show-directory t
        lsp-ui-peek-fontify 'always))

;;; ============================================================================
;;; COMPANY - Completion Framework
;;; ============================================================================

(after! company
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1
        company-show-quick-access t
        company-selection-wrap-around t
        company-tooltip-align-annotations t
        company-tooltip-limit 12
        company-tooltip-minimum-width 50
        company-tooltip-maximum-width 100
        company-tooltip-margin 2
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-code-ignore-case t
        company-require-match 'never
        company-global-modes '(not erc-mode message-mode help-mode)
        company-frontends '(company-pseudo-tooltip-frontend
                            company-echo-metadata-frontend)))

(after! company-box
  (setq company-box-show-single-candidate t
        company-box-backends-colors nil
        company-box-tooltip-limit 12
        company-box-icons-alist 'company-box-icons-nerd-icons
        company-box-scrollbar nil))

;;; ============================================================================
;;; TREESITTER - Modern Syntax Highlighting
;;; ============================================================================

(after! tree-sitter
  (setq +tree-sitter-hl-enabled-modes t)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

;;; ============================================================================
;;; WEB DEVELOPMENT - JavaScript/TypeScript/React
;;; ============================================================================

;; JavaScript/TypeScript
(after! js2-mode
  (setq js2-basic-offset 2
        js-indent-level 2
        js2-strict-missing-semi-warning nil
        js2-missing-semi-one-line-override nil
        js2-mode-show-parse-errors nil
        js2-mode-show-strict-warnings nil))

(after! typescript-mode
  (setq typescript-indent-level 2))

(after! web-mode
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-style-padding 2
        web-mode-script-padding 2
        web-mode-enable-auto-pairing t
        web-mode-enable-auto-closing t
        web-mode-enable-auto-quoting t
        web-mode-enable-css-colorization t
        web-mode-enable-current-element-highlight t
        web-mode-enable-current-column-highlight nil))

;; Associate file extensions
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.svelte\\'" . web-mode))

;; ESLint/Prettier integration
(after! apheleia
  (setf (alist-get 'prettier apheleia-formatters)
        '("prettier" "--stdin-filepath" filepath)))

;; Emmet for fast HTML/CSS
(add-hook! (web-mode css-mode) #'emmet-mode)
(after! emmet-mode
  (setq emmet-indentation 2
        emmet-move-cursor-between-quotes t))

;;; ============================================================================
;;; SYSTEMS DEVELOPMENT - C/C++/Rust/Go
;;; ============================================================================

;; C/C++ Configuration
(after! cc-mode
  (setq c-basic-offset 4
        c-default-style '((java-mode . "java")
                         (awk-mode . "awk")
                         (other . "linux"))))

(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '("-j=4"
          "--background-index"
          "--clang-tidy"
          "--completion-style=detailed"
          "--header-insertion=iwyu"
          "--header-insertion-decorators"
          "--all-scopes-completion"
          "--pch-storage=memory")))

;; Rust Configuration
(after! rustic
  (setq rustic-lsp-server 'rust-analyzer
        rustic-format-on-save t
        rustic-format-trigger 'on-save
        rustic-analyzer-command '("rust-analyzer"))
  (setq lsp-rust-analyzer-cargo-watch-command "clippy"
        lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial"
        lsp-rust-analyzer-display-chaining-hints t
        lsp-rust-analyzer-display-lifetime-elision-hints-use-parameter-names nil
        lsp-rust-analyzer-display-closure-return-type-hints t
        lsp-rust-analyzer-display-parameter-hints nil
        lsp-rust-analyzer-display-reborrow-hints nil
        lsp-rust-analyzer-proc-macro-enable t
        lsp-rust-analyzer-import-granularity "module"
        lsp-rust-analyzer-import-prefix "self"))

;; Go Configuration
(after! go-mode
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook #'gofmt-before-save))

(after! lsp-go
  (setq lsp-go-analyses '((fieldalignment . t)
                         (nilness . t)
                         (unusedparams . t)
                         (unusedwrite . t)
                         (useany . t))))

;;; ============================================================================
;;; PYTHON DEVELOPMENT
;;; ============================================================================

(after! python
  (setq python-indent-offset 4
        python-shell-interpreter "python3"))

(after! lsp-pyright
  (setq lsp-pyright-typechecking-mode "basic"
        lsp-pyright-auto-import-completions t
        lsp-pyright-auto-search-paths t
        lsp-pyright-diagnostic-mode "workspace"))

;;; ============================================================================
;;; SHELL/BASH DEVELOPMENT
;;; ============================================================================

(after! sh-script
  (setq sh-basic-offset 2
        sh-indentation 2))

;;; ============================================================================
;;; FORMAT ON SAVE
;;; ============================================================================

(setq +format-on-save-enabled-modes
      '(not emacs-lisp-mode
            sql-mode
            tex-mode
            latex-mode
            org-msg-edit-mode))

;;; ============================================================================
;;; KEYBINDINGS - Efficient Workflow
;;; ============================================================================

(map! :leader
      ;; Project management
      :desc "Project search" "p s" #'+default/search-project
      :desc "Project files" "p f" #'projectile-find-file
      :desc "Project root" "p r" #'projectile-find-file-in-known-projects

      ;; LSP
      (:prefix ("l" . "LSP")
       :desc "Restart LSP" "r" #'lsp-restart-workspace
       :desc "Find references" "R" #'lsp-find-references
       :desc "Find definition" "d" #'lsp-find-definition
       :desc "Find type def" "t" #'lsp-find-type-definition
       :desc "Code actions" "a" #'lsp-execute-code-action
       :desc "Rename" "n" #'lsp-rename
       :desc "Format buffer" "f" #'+format/buffer
       :desc "Organize imports" "o" #'lsp-organize-imports)

      ;; Buffer management
      :desc "Switch buffer" "," #'switch-to-buffer
      :desc "Kill buffer" "b k" #'kill-current-buffer

      ;; Terminal
      :desc "Toggle vterm" "o t" #'+vterm/toggle
      :desc "Vterm here" "o T" #'+vterm/here

      ;; Treemacs
      :desc "Toggle treemacs" "e" #'+treemacs/toggle

      ;; Git
      (:prefix ("g" . "git")
       :desc "Magit status" "s" #'magit-status
       :desc "Git blame" "b" #'magit-blame-addition
       :desc "Git log" "l" #'magit-log-current
       :desc "Stage hunk" "h" #'git-gutter:stage-hunk
       :desc "Revert hunk" "r" #'git-gutter:revert-hunk)

      ;; Quick access
      :desc "Find file" "." #'find-file
      :desc "Recent files" "f r" #'recentf-open-files
      :desc "Save file" "f s" #'save-buffer)

;; Vim-style window navigation
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)

;;; ============================================================================
;;; WHICH-KEY - Better Discoverability
;;; ============================================================================

(after! which-key
  (setq which-key-idle-delay 0.5
        which-key-idle-secondary-delay 0.05
        which-key-allow-multiple-replacements t
        which-key-max-display-columns nil
        which-key-min-display-lines 6
        which-key-side-window-slot -10))

;;; ============================================================================
;;; VERTICO - Enhanced Minibuffer
;;; ============================================================================

(after! vertico
  (setq vertico-count 15
        vertico-resize nil
        vertico-cycle t))

(after! vertico-posframe
  (setq vertico-posframe-parameters
        '((left-fringe . 8)
          (right-fringe . 8))))

;;; ============================================================================
;;; MARGINALIA - Rich Annotations
;;; ============================================================================

(after! marginalia
  (setq marginalia-max-relative-age 0
        marginalia-align 'right))

;;; ============================================================================
;;; PERFORMANCE OPTIMIZATIONS
;;; ============================================================================

;; Garbage collection
(setq gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024)
      lsp-use-plists t)

;; File handling
(setq create-lockfiles nil
      make-backup-files nil
      version-control t
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 5
      kept-old-versions 2
      auto-save-default t
      auto-save-timeout 20
      auto-save-interval 200)

;; Better undo
(setq undo-limit 80000000
      undo-strong-limit 120000000
      undo-outer-limit 360000000)

;;; ============================================================================
;;; MISCELLANEOUS
;;; ============================================================================

;; Start maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Yes or no -> y or n
(setq use-short-answers t)

;; Don't ask about killing processes
(setq confirm-kill-processes nil)

;; Disable warnings for large files
(setq large-file-warning-threshold nil)

;; Disable the bell
(setq ring-bell-function 'ignore)

;; Better word wrapping
(setq-default word-wrap t
              truncate-lines t
              truncate-partial-width-windows nil)

;; Show trailing whitespace in programming modes
(add-hook 'prog-mode-hook (lambda () (setq show-trailing-whitespace t)))

;; Clean up whitespace on save
(add-hook 'before-save-hook #'whitespace-cleanup)

;; Enable narrowing
(put 'narrow-to-region 'disabled nil)

;; Better file sorting in dired
(setq dired-listing-switches "-alh --group-directories-first")

;;; ============================================================================
;;; END OF CONFIGURATION
;;; ============================================================================

;;; config.el ends here
