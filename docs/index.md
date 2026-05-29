# FindMe

**FindMe** is a Blender add-on with tools for selecting objects and geometry based on a *trait* — a property or potential problem such as N-gons, non-manifold geometry, scaled objects, empty material slots, and many more.

Each trait has its own **finder**: a one-click button in the FindMe sidebar panel that scans your scene (or the active mesh in Edit Mode) and selects everything that matches. Finders are grouped by category, show a live count of matches, and many expose their own tunable thresholds.

```{tip}
FindMe lives in the **3D Viewport sidebar** (press `N`) under the **FindMe** tab.
```

## Highlights

- **Object Mode finders** — scan whole objects for issues across Object, Mesh, Modifier, Material, and Attribute categories.
- **Edit Mode finders** — select individual vertices, edges, or faces of the active mesh.
- **Live counts** — each finder button shows how many objects/elements match, and turns red when there are matches.
- **Collection-color filtering** — restrict scanning to collections with chosen color tags, with optional recursion.
- **Per-finder settings** — adjust thresholds (angles, distances, allowed lists) via the gear icon next to a finder.
- **Extensible** — add your own finders by dropping a small Python file into the add-on.

```{toctree}
:maxdepth: 2
:caption: Getting Started

installation
usage
settings
```

```{toctree}
:maxdepth: 2
:caption: Finder Reference

finders/object-mode
finders/edit-mode
```

```{toctree}
:maxdepth: 2
:caption: Advanced

custom-finders
```
