# Settings

FindMe has three levels of configuration:

1. **Panel settings** — quick options in the FindMe sidebar (`N` panel).
2. **Per-finder settings** — thresholds opened from a finder's ⚙ gear icon.
3. **Add-on preferences** — global enable/disable choices in Blender Preferences.

## Panel settings

Open the **Settings** sub-panel in the FindMe tab.

### Object Lookup

Controls which objects the object-mode finders consider when scanning:

- **All Visible** — every object currently visible in the viewport.
- **By Collection Color** — only objects in collections matched by the
  [Hierarchy filter](#collection-color-filtering).

### Mesh Source

Controls which mesh data the finders analyze:

- **Object Data** — the raw mesh on the object, *before* modifiers.
- **Evaluated Data** — the mesh *after* modifiers are applied (the default).

## Collection-color filtering

When **Object Lookup** is set to **By Collection Color**, a row of color swatches
appears at the top of the panel and a **Hierarchy** sub-panel becomes available.

- **Color swatches** — toggle which collection color tags are included. *Default*
  covers collections with no color tag.
- **Scene Collection** — include objects placed directly in the Scene Collection.
- **Recursive** (`R`) — also include all child collections of a matched collection.

The **Hierarchy** sub-panel shows a live tree of the matched collections and the
object counts at each level, so you can confirm exactly what will be scanned.

## Per-finder settings

Finders that have tunable parameters show a **gear icon (⚙)** next to their button.
Click it to open a popup with that finder's options. Typical parameters include:

- **Distance thresholds** (e.g. Close Vertices)
- **Angle thresholds** in degrees or radians (e.g. Degenerate Vertex, Twisted Face)
- **Edge-count limits** (e.g. Rat Nest)
- **Allowed lists** as comma-separated text (e.g. Bad Modifier, Bad Color)
- **Type selectors** (e.g. By Modifier, By GN Tree)

```{note}
Some thresholds are **shared** between an Object Mode finder and its Edit Mode
counterpart. Changing the value in one place updates both, and counts re-scan
automatically.
```

## Ignored objects (bypass word)

The **Ignored** summary button and its gear let you configure a **bypass word**.
Any object whose name contains this word (case sensitive) is skipped by the finders
and counted separately under **Ignored**. The default bypass word is `IGNORE`.

Use this to deliberately exclude reference, scaffold, or work-in-progress objects
from scans without deleting or hiding them.

## Enabling and disabling finders

You can hide finders you don't use:

- **From the panel** — disabled finders collect under the **Disabled Finders**
  sub-panel, where each can be toggled back on.
- **From preferences** — open **Edit ▸ Preferences ▸ Add-ons**, expand **FindMe**,
  and tick/untick finders under **Show Buttons** for both Object Mode and Edit Mode.

The Object Lookup mode can also be set from the preferences screen.
