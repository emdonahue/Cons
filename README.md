# Cons
A Lisp-style lazy cons list. Can handle Smalltalk streams and infinite generators (blocks) as though they were lists. Non lazy operations avoid building intermediate lists unless specified, so can be used safely on large or infinite lists. All list operations return lazy lists. All non-list operations return values immeditaely.

### Instance Creation:
```smalltalk
Cons empty.                     "()"
2 cons.                         "(2)"
1 cons: 2.                      "(1 . 2)"
1 cons: 2 cons.                 "(1 2)"
Cons with: 1 with: 2.           "(1 2)"
2 cons add: 1.                  "(1 2)"
#(1 2 3) asCons.                "(1 2 3)"
#(1 2 3) readStream asCons.     "(...)"
[ 5 ] asCons                    "(...)" "Infinite list of 5's"
[ :x | x + 1 ] asCons: 1.       "(...)" "Natural numbers"
Cons generate: [ :x | x + 1 ] from: [ 0 ] to: [ :x | x = 10 ]. "(...)" "Numbers 0-10"
Cons generate: [ :x | x + 1 ] from: [ 0 ] upTo: [ :x | x = 10 ]. "(...)" "Numbers 0-9"
```

### List Operations (Lazy) (normal Smalltalk syntax):
```smalltalk
(1 cons: 2 cons) select: [ :x | x < 2 ].  "(...)"
```
The full set of lazy operations can be found in the *list* protocol. To extend with new operations, use `self lazy: [ :next :prev :block | ... ]`, where next is the pair representing the suspended list to be filled with the next values, prev is the current list from which the next list is derived, and block is the block used to facilitate the transformation. Within this block, use methods from the laziness protocol on next, such as 'next empty,' 'next car: a cdr: d,' 'next carcdr: ad,' and 'next car: a cdr: d block: block.'

### Non-List Operations (Eager) (normal Smalltalk syntax):
```smalltalk
(1 cons: 2 cons) inject: 0 into: [ :x :y | x + y ].  "3"
```
The full set of eager operations can be found in the *element* protocol. To extend with new operations, in most cases, use `#linksDo:` for an optimized eager walk through the list, or another method derived from it. Similar to do: but passes in the actual list cells.

### Forcing Functions
Because intermediate lists are not built by default, lists generated from underlying stateful processes, such as a stream, may be unsafe if referenced repeatedly. The *force* family of functions builds immutable lists that can safely be referenced multiple times. 

```smalltalk
(Cons naturals take: 3) force.     "(1 2 3)"
(Cons naturals take: 3) forced.     "(...)" "Lazily builds the concrete list as needed"
```

### Installation
```smalltalk
Metacello new
	baseline: 'Cons';
	repository: 'github://emdonahue/Cons';
	load.
```
