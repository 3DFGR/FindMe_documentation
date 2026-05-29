# Writing Custom Finders

FindMe is designed to be extended. A finder is just a small Python class in a single
file, and the add-on auto-discovers it on load. This page explains how the system
works and how to add your own.

```{note}
Custom finders are added by placing a `.py` file inside the add-on's
`object_mode/` or `edit_mode/` folder. This requires access to the add-on files.
```

## How finders are discovered

On registration, FindMe scans the `object_mode/` and `edit_mode/` directories and
imports every `.py` file that:

- does **not** start with `_` (so `_template.py` is ignored), and
- defines a class subclassing the appropriate base (`ObjectFinder` or the edit-mode
  base) that implements a `find()` method.

Discovered finders are sorted alphabetically by label and a button is generated for
each. There is no manual registration list to maintain — drop in a file and it
appears.

## Anatomy of an Object Mode finder

Every object finder inherits from `ObjectFinder` and sets a few metadata fields plus
a `find()` classmethod:

```python
from . import ObjectFinder


class NGON(ObjectFinder):
    label = "N-gons"                # short UI button name
    description = "Select mesh objects with polygons that have more than 4 vertices"
    icon = "MESH_DATA"              # any Blender icon name
    category = "Mesh"               # grouping in the panel
    enabled_default = True          # shown by default?

    @classmethod
    def find(cls, objects, context):
        # `objects` is the list FindMe wants checked.
        # Return the subset that matches your rule; those get selected.
        matched = []
        for obj in objects:
            if obj.type == "MESH":
                mesh = cls.get_mesh(obj, context)
                # ... your rule here ...
                matched.append(obj)
        return matched
```

### Metadata fields

| Field | Purpose |
| --- | --- |
| `label` | Short text shown on the finder's button. |
| `description` | Longer tooltip text. |
| `icon` | Blender icon name (e.g. `MESH_DATA`, `MODIFIER`, `ERROR`). |
| `category` | Panel group: `Object`, `Mesh`, `Modifier`, `Material`, `Attribute`, or `Other`. |
| `enabled_default` | If `False`, the finder is hidden until enabled in preferences. |

### The `find()` method

`find(cls, objects, context)` must return a **list of `bpy.types.Object`**. FindMe
selects exactly the objects you return. Be defensive — `objects` may contain
non-mesh types, so guard with `obj.type == "MESH"` where relevant.

## Helper methods

`ObjectFinder` provides helpers you should prefer over raw `bpy` access:

- **`cls.get_mesh(obj, context)`** — returns the object's mesh data, respecting the
  **Mesh Source** setting (raw object data vs. evaluated-after-modifiers).
- **`cls.get_props(context)`** — returns the FindMe scene properties (filter
  settings and your finder's own scene properties).
- **`cls.get_addon_preferences(context)`** — returns the add-on preferences (enable
  flags, etc.). May be `None` during startup/reload, so handle that.

## Adding tunable settings

Expose user-adjustable parameters with a class-level `scene_properties` dict. Each
entry becomes a property on `scene.findme_props` and renders in the ⚙ gear popup next
to your finder's button:

```python
import bpy
from . import ObjectFinder


class CLOSE_VERTS(ObjectFinder):
    label = "Close Vertices"
    description = "Select mesh objects with vertices that are very close together"
    icon = "MESH_DATA"
    category = "Mesh"

    scene_properties = {
        "closeverts_distance": bpy.props.FloatProperty(
            name="Distance",          # keep short — used as the popup label
            description="Vertices closer than this distance are considered close",
            default=0.001,
            min=0.0,
        ),
    }

    @classmethod
    def find(cls, objects, context):
        props = cls.get_props(context)
        distance = getattr(props, "closeverts_distance", 0.001) if props else 0.001
        # ... use `distance` in your rule ...
        return []
```

```{tip}
If the **same** property name is declared by both an Object Mode and an Edit Mode
finder (common for related pairs), only one Blender property is registered and both
finders read the same value — handy for keeping thresholds in sync.
```

## Edit Mode finders

Edit-mode finders follow the same pattern but operate on the active mesh and select
**components** (vertices/edges/faces) rather than whole objects. Place them in the
`edit_mode/` folder.

## Starting from the template

Each folder ships a fully commented `_template.py`. The fastest way to build a new
finder is:

1. Copy `_template.py` to a new descriptive name (e.g. `my_check.py`).
2. Rename the class.
3. Fill in `label`, `description`, `icon`, `category`, `enabled_default`.
4. Implement `find()` (and optionally `scene_properties`).
5. Reload the add-on; your finder appears automatically.

Because each finder is self-contained, you can also paste `_template.py` into an AI
assistant, describe your rule in plain English, and ask it to edit only the `find()`
function.
