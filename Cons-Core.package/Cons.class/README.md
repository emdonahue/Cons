New Lazy List Operations:
Subclass ConsTransducer (see ConsTransducer comment for details).

New Eager Operations:
If cannot be built out of existing eager protocol operations, use elements of the linking protocol. These handle laziness properly. See method comments for details.

New Linking Operations:
If it is necessary to extend the base operations in the linking protocol, use the primitive elements of the syncing protocol.