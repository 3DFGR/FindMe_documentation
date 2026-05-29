# Usage

## Opening the panel

Press `N` in the 3D Viewport and open the **FindMe** tab. The panel changes with
the current mode:

- **Object Mode** — object-level finders, grouped by category.
- **Edit Mode** (mesh) — finders that operate on the active mesh.

## How finders work

Each finder is one rule, shown as a button:

```
[ Finder name        ⚙ ] [ count ]
```

- Click the button to run the finder. Matching objects (Object Mode) or mesh
  elements (Edit Mode) get selected.
- The **count** shows how many items match.
- The button turns red when the count is above zero.
- The **gear icon** (⚙) opens the finder's [settings](settings.md). Only finders
  with parameters have one.

Running a finder replaces the current selection with its matches.

## Refreshing counts

Counts update automatically when settings change. To force a re-scan, use the
**refresh** button (circular arrow) in the **Finders** sub-panel header.

## Object Mode workflow

The **Finders** sub-panel groups object finders into categories:

| Category | What it covers |
| --- | --- |
| **Object** | Object-level properties and settings (transforms, parenting, type) |
| **Mesh** | Mesh geometry and topology issues |
| **Modifier** | Modifier stack problems |
| **Material** | Material and shading issues |
| **Attribute** | Custom attributes, UVs, vertex colors, and data layers |
| **Other** | Miscellaneous or unmatched finders |

Two summary buttons sit at the top:

- **All** — selects every object matched by any enabled finder.
- **Ignored** — selects objects skipped by the *bypass word* (see
  [Settings](settings.md#ignored-objects-bypass-word)).

Full list: [Object Mode finder reference](finders/object-mode.md).

## Edit Mode workflow

Enter Edit Mode on a mesh to see edit-mode finders. They select **components**
(vertices, edges, or faces) instead of whole objects.

Full list: [Edit Mode finder reference](finders/edit-mode.md).

## Enabling and disabling finders

Disabled finders are hidden from the main panel and collected under a **Disabled
Finders** sub-panel, where you can toggle them back on. You can also set this in the
add-on preferences — see
[Settings ▸ Enabling finders](settings.md#enabling-and-disabling-finders).
