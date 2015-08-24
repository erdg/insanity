(symbols 'ins@nity 'pico)

(local become-ins@ne *Funs)

[de become-ins@ne (@Fun)
   (macro
      (out "+ins@nity.l"   # open in "append" mode
         (prinl "[de " (pack '@Fun "@") " \"Args\"")
         (do 3 (prin (char 32)))   # printing spaces for proper PL indenting
         (prinl "(" '@Fun)
         (do 6 (prin (char 32)))
         (prinl "'((@) (run (cdr \"Args\")))")
         (do 6 (prin (char 32)))
         (prinl "(eval (car \"Args\")) ]")
         (prinl) ]

[setq *Funs
   (quote
      map
      mapc
      mapcar
      mapcan
      mapcon
      maplist
      filter
      extract
      seek
      find
      pick
      fish
      fully ]
      
(once
   (unless (info "ins@nity.l")
      (mapc become-ins@ne *Funs) ) )
