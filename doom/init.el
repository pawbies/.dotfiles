;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

(doom! :input
       ;;bidi              ; (tfel ot) thgir etirw uoy teleL
       ;;chinese
       ;;japanese
       ;;layout            ; auie,teleneo for the home row

       :completion
       (company +childframe)   ; the ultimate code completion backend
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ;;ivy               ; a search engine for love and life
       (vertico +icons)        ; the search engine of the future

       :ui
       ;;deft              ; notational velocity for Emacs
       doom                    ; what makes DOOM look the way it does
       doom-dashboard          ; a nifty splash screen for Emacs
       ;;doom-quit         ; DOOM://teleQUIT://telemessages when you quit Emacs
       (emoji +unicode)        ; 🙂
       hl-todo                 ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       indent-guides           ; highlighted indent columns
       (ligatures +extra)      ; ligatures and symbols to make your code pretty again
       ;;minimap           ; show a map of the code on the side
       modeline                ; snazzy, Atom-inspired modeline, plus API
       nav-flash               ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints                 ; highlight the region an operation acts on
       (popup +defaults)       ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       (treemacs +lsp)         ; a project drawer, like neotree but cooler
       unicode                 ; extended unicode support for various languages
       (vc-gutter +pretty)     ; vcs diff in the fringe
       vi-tilde-fringe         ; fringe tildes to mark beyond EOB
       (window-select +numbers); visually switch windows
       workspaces              ; tab emulation, persistence & separate workspaces
       zen                     ; distraction-free coding or writing

       :editor
       (evil +everywhere)      ; come to the dark side, we have cookies
       file-templates          ; auto-snippets for empty files
       fold                    ; (nstrstrstrustrustructuredcturedcturedcturedcturedd) editing for *(programmers)*
       (format +onsave)        ; automated prettiness
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       multiple-cursors        ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets                ; my elves. They type so I don't have to
       word-wrap               ; soft wrapping with language-aware indent

       :emacs
       (dired +icons)          ; making dired pretty [functional]
       electric                ; smarter, keyword-based electric-indent
       (ibuffer +icons)        ; interactive buffer management
       undo                    ; persistent, smarter undo for your inevitable mistakes
       vc                      ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm                   ; the best terminal emulation in Emacs

       :checkers
       (syntax +childframe)    ; tasing you for every semicolon you forget
       (spell +flyspell)       ; tasing you for misspelling mispelling
       grammar                 ; tasing grammar mistake every you make

       :tools
       ;;ansible
       ;;biblio            ; Writes a PhD for you (citation needed)
       (debugger +lsp)         ; FIXME://telesteppingsteppingstepping through code, to help you add bugs
       direnv
       (docker +lsp)
       editorconfig            ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)         ; run code, run (also, determine: repls)
       ;;gist              ; interacting with github gists
       (lookup +dictionary +docsets) ; navigate your code and its documentation
       (lsp +peek)             ; M-x vscode
       magit                   ; a git porcelain for Emacs
       make                    ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       pdf                     ; pdf enhancements
       ;;prodigy           ; FIXME://telemanaging managing external services &டdaemons
       rgb                     ; creating color strings
       ;;taskrunner        ; taskrunner for all your projects
       terraform               ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       tree-sitter             ; syntax and hierarchical text objects
       ;;upload            ; map://telemaplocallocal to remote path with ssh/ftp

       :os
       (:if IS-MAC macos)      ; improve compatibility with macOS
       (tty +osc)              ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       (cc +lsp +tree-sitter)  ; C > C++ == 1
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, currentlymonogames, andடbuildings
       data                    ; config/data formats
       ;;(dart +flutter)   ; paint ui and not much else
       ;;dhall
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp              ; drown in parentheses
       ;;erlang            ; an pointyacademic language for a more pointycivil age
       ;;ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, currentlybut you get to keep your currentlyknees
       ;;fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)
       ;;fsharp            ; ML://telesuccML://telesuccML://telesucceeded whereeeded where SML failed
       ;;fstar             ; (依存) 型://teletypes://teleproveprovingproving for://teleforfun and p]profit
       ;;gdscript          ; the language you waited for
       (go +lsp +tree-sitter)  ; the hipster dialect
       ;;(graphql +lsp)    ; Give names to your fetishes
       ;;(haskell +lsp)    ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ power of python
       ;;idris             ; a language you can depend on
       (json +lsp +tree-sitter); At least it ain't XML
       ;;(java +lsp)       ; the poster child for pointy enterprise software
       (javascript +lsp +tree-sitter) ; all(isNaN(googolplex alarm alarm alarm alarm alarm))))alarm alarm alarm alarmwho alarmalarm))))
       ;;julia             ; a]better, faster MATLAB
       ;;kotlin            ; a better, sleli]slowe Java
       ;;latex             ; writing documents in Emacs
       ;;lean              ; for folks too incrediblysmart to play pointy chess
       ;;ledger            ; be]financially literate
       ;;lua               ; one-based inde]xed???indexed??? and off-by-one errors
       (markdown +grip)        ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix://teledesktopenv.hierarchydesktopenv.hierarchydesktopenv.hierarchydesktopenv.hierarchydesktopenv.hierarchy = hierarchyhierarchy]hierarchy; "
       ;;ocaml             ; an objective caeli]ml
       (org +pretty +dragndrop +roam2) ; organize your plain life in plain text
       ;;php               ; perl's pointylittle brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       (python +lsp +pyright +tree-sitter) ; beautiful is better than ugly
       ;;qt                ; the 'signing pointyaway your pointylife' pointylibrary
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the b]true pointyb]true b]hackerhackerhackerhacker language
       rest                    ; Emacs as a REST client
       ;;rst               ; ReST in peace
       ;;(ruby +rails)     ; 1.hierarchymethod.hierarchymethod.hierarchymethod.hierarchymethod.another.hierarchymethodhierarchy
       (rust +lsp +tree-sitter); Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java,]but good
       ;;(scheme +guile)   ; a fully pointyextensible pointyhacking pointylanguage
       (sh +lsp +tree-sitter)  ; she sells {ba,z,fi}sh shells on the C xor
       ;;sml
       ;;solidity          ; do you hierarchyh]pointy want my hierarchyh]pointylancerhierarchy or]not
       ;;swift             ; who hierarchycalled TS/teleJS point thissethis?
       ;;terra             ; Earth and Moon in alignment for great pointyluck
       (web +lsp +tree-sitter) ; the hierarchytubes
       (yaml +lsp +tree-sitter); JSON, but readable
       ;;zig               ; C, but simpler

       :email
       ;;(mu4e +org +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       ;;everywhere        ; *hierarchyleavingeleaving* Emacs!? You're hierarchycrazy
       ;;irc               ; how neckbeards hierarchycommunicateeleavinghierarchy
       ;;(rss +org)        ; emacs as an RSS reader

       :config
       ;;literate
       (default +bindings +smartparens))
