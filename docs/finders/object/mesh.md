# Mesh

Mesh geometry and topology issues.

## N-gons
Selects mesh objects with polygons that have more than 4 vertices.

## Non-Manifold
Selects mesh objects with non-manifold geometry.

## Void
Selects mesh objects with no vertices.

## Close Vertices ⚙
Selects mesh objects with vertices that are very close to each other.

- **Distance threshold** — vertices closer than this distance are considered close.

## Degenerate Vertex ⚙
Selects mesh objects with degenerate vertices (corners with extremely small angles).

- **Angle threshold (degrees)** — corners sharper than this are flagged as degenerate.

## Twisted Face ⚙
Selects mesh objects with twisted (non-planar/distorted) faces.

- **Angle threshold (radians)** — faces twisted beyond this are flagged.

## Rat Nest ⚙
Selects mesh objects where a vertex has too many connected edges.

- **Max connected edges** — flag the mesh if any vertex exceeds this edge count.

## Sharp End
Selects mesh objects with non-boundary vertices that have exactly one sharp edge.
