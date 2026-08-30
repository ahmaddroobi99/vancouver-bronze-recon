# Vancouver bronze reconstruction

Interactive **360 × 360 × 3** platform and CAD for two downtown Vancouver public bronzes, rebuilt from handheld orbit videos filmed August 2026.

| Sculpture | Artist | Year | Site |
|---|---|---|---|
| **Need** | Kambiz Sharif | 2020 | Melville × West Pender × Jervis, Coal Harbour |
| **Spirits in a Landscape** | Abraham Anghik Ruben, OC | 1992 | 1111 West Georgia (FortisBC Centre) |

## What this is

- Live Three.js orbit viewers (drag / scroll)
- Three orthographic projections per sculpture (front / side / top)
- Unique-object segmentation (color-by-part + exploded plates)
- OpenSCAD CAD + JSON parameters
- Generated studio reconstructions and turntable videos

This is **not** photogrammetry. Need is a parametric solid fitted to the published 5180 × 3040 × 2430 mm envelope. Spirits is a schematic of the unique animals because the real bronze is a dense organic tangle.

## Files

```
index.html              platform
js/recon.js             Three.js models + cameras
cad/need.scad           buildable parametric CAD
cad/need.json           published + interpretive dimensions
cad/spirits.scad        schematic segmented animals
cad/spirits.json        object inventory
views/                  studio reconstructions
segments/               unique-object plates
video/                  generated 360 orbits
```

## CAD

Open `cad/need.scad` in [OpenSCAD](https://openscad.org/). Units are millimetres. For a 1:20 study model, scale by 0.05 in the slicer (~260 mm tall).

Need unique parts: granite plinth, bronze sphere, folded collar, beam A / B / C.

Spirits unique parts: granite plinth, bronze base, seal, otter, two adult bears, two cubs, salmon, two wolf/cougar heads, two eagles, owl.

## Run locally

Any static server:

```
python3 -m http.server 8080
```

Then open http://localhost:8080

## Sources

- https://www.vancouverbiennale.com/artworks/need/
- City of Vancouver Public Art Registry, ArtworkId=301
- Handheld videos, August 2026
