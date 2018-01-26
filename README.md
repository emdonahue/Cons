# Cons
A Lisp-style lazy cons list. Can handle Smalltalk streams and infinite generators (blocks) as though they were lists. Uses transducers to avoid intermediate representations for speed. All list operations return lazy lists. All non-list operations return values immeditaely.

### Instance Creation:
```
Cons empty.                     "()"
2 cons.                         "(2)"
1 cons: 2.                      "(1 . 2)"
1 cons: 2 cons.                 "(1 2)"
Cons with: 1 with: 2.           "(1 2)"
2 cons add: 1.                  "(1 2)"
#(1 2 3) asCons.                "(1 2 3)"
#(1 2 3) readStream asCons.     "(...)"
x := 0. [ x := x + 1 ] asCons.  "(...)"
x := 0. Cons generate: [ x := x + 1 ] until: [ x = 4 ]. "(...)"
```

### List Operations (Lazy) (normal Smalltalk syntax):
```
(1 cons: 2 cons) select: [ :x | x < 2 ].  "(...)"
```
The full set of lazy operations can be found in the *lazy* protocol.

### Non-List Operations (Eager) (normal Smalltalk syntax):
```
(1 cons: 2 cons) inject: 0 into: [ :x :y | x + y ].  "3"
```
The full set of eager operations can be found in the *eager* protocol.

### Unsafe Operations
Although Cons avoids building intermediate lists when possible, it does, by default, build a list to cache the values produced by a *aStream asCons* or *aBlock asCons*. This is so that calling, for instance, #second on the list always returns the same value, even as the underlying stream mutates. To override this behavior and use Cons as a purely stateless iterator over a stream or other generator, use the #unsafe method as below. This will change the behavior of all lists that depend on the stream or generator.
```
myStream asCons unsafe do: [...].
```
