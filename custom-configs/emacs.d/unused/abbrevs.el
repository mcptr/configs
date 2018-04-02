(define-abbrev-table 'global-abbrev-table '(
    ;; math/unicode symbols
    ("QQin" "∈")
    ("QQnin" "∉")
    ("QQinf" "∞")
    ("QQluv" "♥")
    ("QQsmly" "☺")

    ("QQwp" "Wikipedia")
    ("QQms" "Microsoft")
    ("QQg" "Google")
    ("QQqt" "QuickTime")
    ("QQit" "IntelliType")
    ("QQmsw" "Microsoft Windows")
    ("QQwin" "Windows")
    ("QQie" "Internet Explorer")
    ("QQahk" "AutoHotkey")
    ("QQpr" "POV-Ray")
    ("QQps" "PowerShell")
    ("QQmma" "Mathematica")
    ("QQjs" "javascript")
    ("QQvb" "Visual Basic")
    ("QQyt" "YouTube")
    ("QQge" "Google Earth")
    ("QQff" "Firefox")
    ("QQsl" "Second Life")
    ("QQll" "Linden Labs")
    ("QQee" "ErgoEmacs")

    ;; normal english words
    ("QQalt" "alternative")
    ("QQchar" "character")
    ("QQdef" "definition")
    ("QQbg" "background")
    ("QQkb" "keyboard")
    ("QQex" "example")
    ("QQkbd" "keybinding")
    ("QQenv" "environment")
    ("QQvar" "variable")
    ("QQev" "environment variable")
    ("QQcp" "computer")

    ;; url
    ("QQwiki" "http://xahlee.org/")

    ;; emacs regex
    ("QQnum" "\\([0-9]+?\\)")
    ("QQstr" "\\([^\"]+?\\)\"")
    ("QQcurly" "“\\([^”]+?\\)”")

    ;; stuff
    ("QQwd" "use Data::Dumper; warn Dumper ")
    )
)

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)

(let ((prev-a-c abbrevs-changed))
   (define-abbrev-table 'cperl-mode-abbrev-table '(
						   )));
