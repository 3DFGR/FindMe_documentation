# Attribute

Custom attributes, UVs, vertex colors, and data layers.

## Bad UV
Selects mesh objects that don't have exactly one UV map named `UVMap`.

## Degenerate UV
Selects mesh objects with degenerate UV faces (tiny edges or angles).

## Bad Color ⚙
Selects mesh objects that don't contain any allowed color attribute.

- **Allowed color attribute names** — comma-separated list of permitted names.

## Bad Normals
Selects mesh objects with custom normals or sharp-face attributes.

## Empty Vertex Group
Selects objects with vertex groups that have no vertex assignments.

## Empty Attribute
Selects objects with attributes whose values are all zero/false.

## Multi-Color UV Islands
Selects mesh objects with UV islands that contain multiple vertex colors.

## Gradient VC
Selects mesh objects with color gradients in their vertex colors.
