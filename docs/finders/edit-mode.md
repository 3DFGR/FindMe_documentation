# Edit Mode Finders

Edit-mode finders run while you are in **Edit Mode** on a mesh. Instead of selecting
whole objects, they select the matching **components** — vertices, edges, or faces —
of the active mesh, so you can jump straight to the geometry that needs attention.

A ⚙ marks finders that expose tunable [settings](../settings.md). Several settings
are shared with their Object Mode counterparts, so changing a threshold in one place
affects both.

## N-gons
Selects faces with more than 4 vertices.

## Non-Manifold
Selects vertices that are not manifold.

## Close Vertices ⚙
Selects vertices that are too close to each other.

- **Distance threshold** — vertices closer than this distance are considered close.

## Degenerate Vertex ⚙
Selects degenerate vertices (corners with extremely small angles).

- **Angle threshold (degrees)** — corners sharper than this are flagged.

## Twisted Face ⚙
Selects faces that are not flat (twisted/distorted).

- **Angle threshold (radians)** — faces twisted beyond this are flagged.

## Rat Nest ⚙
Selects vertices with too many connected edges.

- **Max connected edges** — flag vertices exceeding this edge count.

## Sharp Ends
Selects vertices that are sharp ends.

## Degenerate UVs
Selects faces with degenerate UV edges or near-zero UV angles.

## Multicolor UVs
Selects faces that have varied vertex colors across shared UVs.

## Gradient VC
Selects faces with a gradient in their vertex colors.
