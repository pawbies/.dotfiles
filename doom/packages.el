;;; $DOOMDIR/packages.el -*- no-byte-compile: t; lexical-binding: t; -*-

;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                         DOOM EMACS PACKAGES                              ║
;; ║              Web & System Development • Catppuccin Edition               ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;;; ============================================================================
;;; THEME & AESTHETICS
;;; ============================================================================

;; Catppuccin Theme - The star of the show
(package! catppuccin-theme)

;; Nerd icons for beautiful file icons
(package! nerd-icons)
(package! nerd-icons-dired)
(package! nerd-icons-completion)
(package! treemacs-nerd-icons)

;; Ligatures support
(package! ligature)

;; Rainbow delimiters for nested parentheses
(package! rainbow-delimiters)

;; Colorful color codes
(package! rainbow-mode)

;; Beacon - Never lose your cursor
(package! beacon)

;; Page break lines - pretty ^L
(package! page-break-lines)

;; Solaire mode - distinguish between "real" and "other" buffers
(package! solaire-mode)

;;; ============================================================================
;;; DEVELOPMENT TOOLS
;;; ============================================================================

;; Emmet for rapid HTML/CSS
(package! emmet-mode)

;; Better JavaScript/TypeScript
(package! prettier-js)
(package! add-node-modules-path)

;; Tailwind CSS
(package! lsp-tailwindcss :recipe (:host github :repo "merrickluo/lsp-tailwindcss"))

;; JSON formatting
(package! json-mode)

;; YAML enhancements
(package! yaml-pro)

;; GraphQL support
(package! graphql-mode)

;; Prisma schema support
(package! prisma-mode :recipe (:host github :repo "pimeys/emacs-prisma-mode"))

;; Dockerfile mode enhancements
(package! dockerfile-mode)

;; Better git blame
(package! blamer)

;; GitHub Copilot (optional - comment out if not using)
;; (package! copilot :recipe (:host github :repo "copilot-emacs/copilot.el" :files ("*.el")))

;;; ============================================================================
;;; PRODUCTIVITY
;;; ============================================================================

;; Focus mode
(package! focus)

;; Dimmer - Dim non-active windows
(package! dimmer)

;; Centered cursor mode
(package! centered-cursor-mode)

;; Better visual feedback
(package! goggles)

;; Highlight TODO/FIXME with colors
(package! hl-todo)

;; String inflection (change case styles)
(package! string-inflection)

;; Move text up/down
(package! move-text)

;; Smart hungry delete
(package! smart-hungry-delete)

;; Better buffer naming
(package! uniquify-files)

;;; ============================================================================
;;; CODE NAVIGATION
;;; ============================================================================

;; Minimap
(package! minimap)

;; Outline magic - better code folding
(package! outline-magic)

;; Symbol overlay - highlight symbol at point
(package! symbol-overlay)

;; Undo tree visualization
(package! undo-tree)

;;; ============================================================================
;;; TERMINAL
;;; ============================================================================

;; Enhanced vterm
(package! vterm-toggle)
(package! multi-vterm)

;;; ============================================================================
;;; COMPLETION & DOCUMENTATION
;;; ============================================================================

;; Company box for prettier completion
(package! company-box)

;; Devdocs - access documentation from within Emacs
(package! devdocs)

;;; ============================================================================
;;; VERSION CONTROL
;;; ============================================================================

;; Git time machine - travel through git history
(package! git-timemachine)

;; Git gutter enhancements
(package! git-gutter-fringe)

;; Forge for GitHub/GitLab integration
(package! forge)

;; Git modes for config files
(package! git-modes)

;;; ============================================================================
;;; ORG MODE ENHANCEMENTS
;;; ============================================================================

;; Modern org mode appearance
(package! org-modern)

;; Org bullets alternative
(package! org-superstar)

;; Org fancy priorities
(package! org-fancy-priorities)

;;; ============================================================================
;;; LSP ENHANCEMENTS
;;; ============================================================================

;; LSP performance booster
(package! lsp-booster :recipe (:host github :repo "blahgeek/emacs-lsp-booster"))

;;; ============================================================================
;;; MISC
;;; ============================================================================

;; Wakatime for coding statistics
;; (package! wakatime-mode)

;; Discord presence (optional)
;; (package! elcord)

;; Better help pages
(package! helpful)

;; Interactive elisp
(package! eros)

;; Restart emacs from within emacs
(package! restart-emacs)

;;; ============================================================================
;;; DISABLED DOOM PACKAGES
;;; ============================================================================

;; To disable a package included with Doom, use:
;; (package! package-name :disable t)

;;; packages.el ends here
