# Magnolia slide icons

PNG versions of the Lucide icon set in the Magnolia slide-template colors, so Google Slides can place them (Slides can't place SVG).

- Source: lucide-static 1.72.0 (Magnolia's design system uses lucide-react ^1.41)
- Size: 192 × 192 px PNG, transparent background, Lucide's standard 2px stroke
- Colors:
  - `green` = #00B054, on light and dark slides
  - `dark` = #013035, on light slides
  - `white` = #FFFFFF, on dark slides

## Use

    https://cdn.jsdelivr.net/gh/<owner>/magnolia-slide-icons@<tag>/lucide/<color>/<name>.png

Example: `.../lucide/green/rocket.png`

`manifest.json` lists every icon name with its Lucide search tags. The slide skill uses it to pick an icon by meaning.

Always use a release tag (e.g. `@v1.0.0`), not a branch, so decks keep working when icons change.

## Rebuild

`tools/build.sh` renders every SVG from lucide-static in the three colors, then reduces each PNG to a 32-color palette.

## License

Lucide icons: ISC, see `LICENSE-lucide`.
