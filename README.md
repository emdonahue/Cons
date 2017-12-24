# Cons
A Lisp-style lazy cons list. Can handle Smalltalk streams and infinite generators (blocks) as though they were lists. Uses transducers to avoid intermediate representations for speed.

### Instance Creation:
```
2 cons.                "(2)"
1 cons: 2.             "(1 . 2)"
1 cons: 2 cons.        "(1 2)"
Cons with: 1 with: 2.  "(1 2)"
2 cons add: 1.         "(1 2)"
```

### List Operations (Lazy) (normal Smalltalk syntax):
```
(1 cons: 2 cons) select: [ :x | x < 2 ].  "(...)"
```

### Non-List Operations (Eager) (normal Smalltalk syntax):
```
(1 cons: 2 cons) inject: 0 into: [ :x :y | x + y ].  "3"
```

### Collection/Stream/Generator Operations:
```
#(1 2 3) asCons.                "(1 2 3)"
#(1 2 3) readStream asCons.     "(...)"
x := 0. [ x := x + 1 ] asCons.  "(...)"
```
