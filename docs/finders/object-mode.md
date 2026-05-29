# Object Mode Finders

Object-mode finders run in **Object Mode** and select whole **objects** that match
a trait. They are grouped into categories in the FindMe panel. A ⚙ marks finders
that expose tunable [settings](../settings.md).

## Object

Object-level properties and settings.

### Scaled
Selects objects that are scaled (object scale is not uniform `1.0`).

### Delta
Selects objects that have delta transforms applied.

### Child
Selects objects that are children of (parented to) other objects.

### Non-Mesh
Selects objects that are not mesh objects.

## Mesh

Mesh geometry and topology issues.

### N-gons
Selects mesh objects with polygons that have more than 4 vertices.

### Non-Manifold
Selects mesh objects with non-manifold geometry.

### Void
Selects mesh objects with no vertices.

### Close Vertices ⚙
Selects mesh objects with vertices that are very close to each other.

- **Distance threshold** — vertices closer than this distance are considered close.

### Degenerate Vertex ⚙
Selects mesh objects with degenerate vertices (corners with extremely small angles).

- **Angle threshold (degrees)** — corners sharper than this are flagged as degenerate.

### Twisted Face ⚙
Selects mesh objects with twisted (non-planar/distorted) faces.

- **Angle threshold (radians)** — faces twisted beyond this are flagged.

### Rat Nest ⚙
Selects mesh objects where a vertex has too many connected edges.

- **Max connected edges** — flag the mesh if any vertex exceeds this edge count.

### Sharp End
Selects mesh objects with non-boundary vertices that have exactly one sharp edge.

## Modifier

Modifier stack problems.

### Bad Modifier ⚙
Selects objects with disallowed modifiers.

- **Allowed modifier types** — comma-separated list of permitted modifier types.
- **Allowed geometry node trees** — comma-separated list of permitted node-tree names.

### Bad Mirror ⚙
Selects objects with mirror modifiers that have a mirror object set.

- **Allow empty mirror objects** — treat `EMPTY` mirror objects as valid (do not flag them).

### By Modifier ⚙
Selects objects that have a modifier of a chosen type. The button label reflects the
chosen modifier type.

- **Modifier type** — modifier type to search for (clearing it disables the finder).

### By GN Tree ⚙
Selects objects with a Geometry Nodes modifier using a chosen node tree. The button
label reflects the chosen tree.

- **Node tree** — geometry node tree to search for (clearing it disables the finder).

## Material

Material and shading issues.

### Multi-Material
Selects mesh objects that use multiple material indices.

### Empty Material Slots
Selects mesh objects that have empty material slots.

### No Material Slots
Selects mesh objects with no material slots at all.

## Attribute

Custom attributes, UVs, vertex colors, and data layers.

### Bad UV
Selects mesh objects that don't have exactly one UV map named `UVMap`.

### Degenerate UV
Selects mesh objects with degenerate UV faces (tiny edges or angles).

### Bad Color ⚙
Selects mesh objects that don't contain any allowed color attribute.

- **Allowed color attribute names** — comma-separated list of permitted names.

### Bad Normals
Selects mesh objects with custom normals or sharp-face attributes.

### Empty Vertex Group
Selects objects with vertex groups that have no vertex assignments.

### Empty Attribute
Selects objects with attributes whose values are all zero/false.

### Multi-Color UV Islands
Selects mesh objects with UV islands that contain multiple vertex colors.

### Gradient VC
Selects mesh objects with color gradients in their vertex colors.
