A lazy lisp-style cons list. List methods produce lazy lists, non-list methods eagerly produce values. Intermediate lists are not constructed unless requested with the 'force' family of methods, so can safely and efficiently process infinite streams. Because intermediate representations are not produced, one should be careful when building lazy lists on top of stateful sources.

New Lazy List Operations:
Use self lazy: [ :next :prev :block | ... ], where next is the pair representing the suspended list to be filled with the next values, prev is the current list from which the next list is derived, and block is the block used to facilitate the transformation. Within this block, use methods from the laziness protocol on next, such as 'next empty,' 'next car: a cdr: d,' 'next carcdr: ad,' and 'next car: a cdr: d block: block.'

New Eager Operations:
In most cases, use linksDo: [  ] for an optimized eager walk through the list, or another method derived from it. Similar to do: but passes in the actual list cells.