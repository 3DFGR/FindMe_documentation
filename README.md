# FindMe Documentation

Public documentation for the **FindMe** Blender add-on, built with
[Sphinx](https://www.sphinx-doc.org/) + [MyST Markdown](https://myst-parser.readthedocs.io/)
and hosted on [Read the Docs](https://readthedocs.org/).

The add-on source is private; this repository contains documentation only.

## Building locally

```bash
python -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r docs/requirements.txt
sphinx-build -b html docs docs/_build/html
```

Then open `docs/_build/html/index.html`.

Live-reload during writing (optional):

```bash
pip install sphinx-autobuild
sphinx-autobuild docs docs/_build/html
```

## Project layout

```
.readthedocs.yaml      # Read the Docs build configuration
docs/
  conf.py              # Sphinx configuration
  requirements.txt     # Documentation build dependencies
  index.md             # Landing page / table of contents
  installation.md
  usage.md
  settings.md
  custom-finders.md
  finders/
    object-mode.md
    edit-mode.md
```

## Publishing on Read the Docs

1. Push this repository to GitHub/GitLab.
2. Sign in at [readthedocs.org](https://readthedocs.org/) and **Import a Project**.
3. Point it at this repository. Read the Docs detects `.readthedocs.yaml`
   automatically and builds on every push.
