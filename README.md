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

### ins@ne idioms
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
You welcome insanity's warm embrace.

### how I went insane
It started with [this post](http://www.mail-archive.com/picolisp@software-lab.de/msg05462) on the PicoLisp mailing list. Shortly thereafter, `map@` (now `mapcar@`) became a regular part of my PicoLisp utility collection. I loved it. So elegant, both in form and function. Here's the final definition, another gem by Alex Burger. 
```lisp
[de mapcar@ "Args"
   (mapcar
      '((@) (run (cdr "Args")))
      (eval (car "Args")) ]
```
For several days I was happily `mapcar@`ing about my code; life was peaches n' cream, if you know what I mean.

> Ummm...

> -- Dude(tte) reading this

Until one day I went to reload a file I had edited...
```lisp
: (ld)
[my-super-awesome-file.l:96835] !? (mapc@ This That)
mapc@ -- Undefined
?
```
I had written some code that called `mapc@`, a function that didn't even exist! Was I going crazy? Better not risk it, I thought. I quickly `de`'d it.
```lisp
[de mapc@ "Args"
   (mapc
      '((@) (run (cdr "Args")))
      (eval (car "Args")) ]
```
Something was oddly familiar about this curious new function, `mapc@`, that sensation you get when you're certain you've met someone before, but have *no* idea as to when or where or what their name might be. Where had I seen this before? *Where*? It was driving me crazy.

> Ummm...

> -- Dude(tte) reading this

Later that week, a black cat walked past my window while I was coding, pausing briefly to look in at me. Was it looking at me? Can black cats even see into a window when its brighter outside than it is in my house? Its gaze seemed to reach the bottom of my soul and seconds melted into minutes. Then it bounded off. Time snapped back. I went back to coding.

That feeling you get when someone is watching you. It washed over me. I nervously shifted in my chair, looking over my shoulder. Nothing. Back to coding. Got into it, was coding something real important. Gonna change the world. Gonna change the world.

That feeling. It returned. Looked over shoulders. Nervous. Nothing. Hands are cold. Hands are sweaty. Why do I have this feeling that someone is watching me and I can't see them but I know that I've met them but I don't when or where or why or what their name might even be. Gonna change the world. This code is really important. Gonnachangetheworldthiscodeisreallyimportant. Reload file.
```lisp
: (ld)
[code-that-will-change-the-world.l:495771291] !? (seek@ This That)
seek@ -- Undefined
?
```
`seek@`? A picture falls off the wall behind me while my printer vomits pages and pages of Illuminati insignia at a rate far exceeding anything within the realm of possible for a $50 HP. I run. Running. Down hall. Turn corner. Black cat. Fuck. Eyes meet. Tunnel vision. Millennium Falcon initiating the hyperdrive into the cats eyes. Fractal universes explode, sending ripples through the space-time continuum. I witness the birth of a new galaxy. All memories ever in this dimension and the one farther down the hall on the left are played simultaneously on an iPad so large that opposite corners lie outside the others' light cone and are thus causally detached. God tells me string theory is dumb and then presents the real unified theory of everything. Problem. It's encoded. It's dense. All information ever across all dimensions of all universes is contained within one symbol. `@`. It's too dense. The fabric of everythingness is written in PicoLisp. One program. One character. `@`. The Multiverse collapses upon itself, but not before I re-engage the hyperdrive on the Millennium Falcon and GTFO. Park Falcon outside my place. Leave keys in ship. No time. Rush inside. Find myself blacked out. Back to Millennium Falcon, hyperdrive through the front door and back into my mind.

I lift my head off the keyboard and look up at the screen.
```lisp
: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
```

Brush away the Illuminati papers. I lift my head off the keyboard and look up at the screen. Papers. I lift my head off the keyboard and look up at the screen. Brush away the Illuminati papers. There were never any Illuminati papers. 

### but seriously
All the functions have the same definition. I didn't want to write out each one, so I wrote a function to write these functions for me. If you find that you like some of this craziness, but you don't want to go completely insane, feel free to edit `*Funs` in `becoming-ins@ne.l` to suit your liking. Only the functions in that list will have their `@` version built. After that,
```bash
$ rm ins@nity.l
$ pil becoming-ins@ne.l
: (load "ins@nity.l")
```
`ins@nity.l` has been rebuilt. Go nuts. 


