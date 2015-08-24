# ins@nity
A whole bunch of mapping cr@ziness for PicoLisp... as if there weren't enough `@`'s in our code already.

### becoming insane
Becoming insane is easy. To get started, turn up your computer to a healthy volume and [open this link in a new tab](https://www.youtube.com/watch?v=kipooHI1NGc). Then,
```bash
$ pil ins@nity.l +
:
```
All of our favorite mapping functions now have a shorthand version.
```lisp
: (mapcar@ (1 2 3) (pack (inc @)))
-> ("2" "3" "4")
: (mapcar '((X) (pack (inc X))) (1 2 3))
-> ("2" "3" "4")
: (mapc@ (1 2 3) (printsp (inc @)))
2 3 4 -> 4
: (mapc '((X) (printsp (inc X))) (1 2 3))
2 3 4 -> 4
```

The syntax is slighty different from their sane counterparts. In all of the `@` functions, the list we'll be mapping over comes first, followed by the function. Except now there is no need to include the function signature; there's only one varible, and that's `@`. Let's try some more.

```lisp
: (find@ (1 2 3 "blue" 4 5) (not (num? @)))
-> "blue"
: (seek@ (1 4 8 11 23 89) (> (car @) 10))
-> (11 23 89)
```
The benefits are not immediately obivious; they might never be. In actual code, however, I enjoy these functions a lot. But maybe I've gone completely ins@ne.

```lisp
: (fully@ '("2" "3" "4")    # this is not actual code
   (and (num? (any @)) (printsp @)) )
2 3 4 -> T
```
That's better; it's much more readable with the function on the line below.


Combine the `@` functions with any of the flow or logic functions to really make your head spin.
```lisp
: (let Lst '(this is the list)
   (when Lst
      (mapcar@ @
         (any (pack @ "a")) ) ) )
-> (thisa isa thea lista)
```
You're losing yourself, your identity, everything you once knew about life and programming, in a sea of `@`'s. It's inevitable, not worth fighting.
```lisp
: (and (1 2 3)
   (mapcar@ @ (inc @))
   (mapcar@ @ (println @))
   (place 2 @ 'three)
   (mapcar@ @ (and (pack @) (println @))) )
2
3
4
"2"
"three"
"4"
-> ("2" "3" "4")
```
You've gone completely ins@ne. 
