# Usage

This page covers the day-to-day workflow: where FindMe lives, how finders work,
and how to read and act on the results.

## Opening the panel

Press `N` in the 3D Viewport and select the **FindMe** tab. The panel adapts to
the current mode:

- In **Object Mode** it shows object-level finders grouped by category.
- In **Edit Mode** (mesh) it shows edit-mode finders that operate on the active mesh.

## How finders work

A **finder** is a single rule that looks for one trait. Each finder is shown as a
button in the panel:

```
[ Finder name        ⚙ ] [ count ]
```

- **Click the button** to run the finder. Matching objects (Object Mode) or mesh
  elements (Edit Mode) are **selected** in the viewport.
- The **count** on the right shows how many items currently match.
- When the count is greater than zero, the button is highlighted (red) so problems
  stand out at a glance.
- The optional **gear icon** (⚙) opens that finder's [settings](settings.md) — only
  finders with tunable parameters show a gear.

```{tip}
Running a finder replaces the current selection with its matches, so you can
immediately fix, inspect, or delete them.
```

## Refreshing counts

Counts update automatically when relevant settings change. To force a re-scan, use
the **refresh** button (circular arrow icon) in the **Finders** sub-panel header.

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

- **All** — selects every object matched by any enabled finder. The count is the
  combined total.
- **Ignored** — selects objects skipped because of the *bypass word* (see
  [Settings](settings.md#ignored-objects-bypass-word)).

See the full list in the [Object Mode finder reference](finders/object-mode.md).

## Edit Mode workflow

Enter Edit Mode on a mesh to see edit-mode finders. These select **components**
(vertices, edges, or faces) rather than whole objects, letting you jump straight to
the problem geometry.

See the full list in the [Edit Mode finder reference](finders/edit-mode.md).

## Enabling and disabling finders

You do not have to see every finder. Disabled finders are hidden from the main panel
and collected under a **Disabled Finders** sub-panel, where you can toggle them back
on. You can also manage which finders are enabled in the add-on preferences — see
[Settings ▸ Enabling finders](settings.md#enabling-and-disabling-finders).
