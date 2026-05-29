# Modifier

Modifier stack problems.

## Bad Modifier ⚙
Selects objects with disallowed modifiers.

- **Allowed modifier types** — comma-separated list of permitted modifier types.
- **Allowed geometry node trees** — comma-separated list of permitted node-tree names.

## Bad Mirror ⚙
Selects objects with mirror modifiers that have a mirror object set.

- **Allow empty mirror objects** — treat `EMPTY` mirror objects as valid (do not flag them).

## By Modifier ⚙
Selects objects that have a modifier of a chosen type. The button label reflects the
chosen modifier type.

- **Modifier type** — modifier type to search for (clearing it disables the finder).

## By GN Tree ⚙
Selects objects with a Geometry Nodes modifier using a chosen node tree. The button
label reflects the chosen tree.

- **Node tree** — geometry node tree to search for (clearing it disables the finder).
