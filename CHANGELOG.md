# Changelog

## 2.0.0 — 2026-08-16

- Redesign the type scale as a Major Third (1.25) modular scale, base 16px:
  13/14/16/20/25/31/39/49/61/76. This replaces 15 ad-hoc extracted sizes with 10 steps.
- Make display sizes fluid with `clamp()` in `tokens.css`.
- Keep v1 token names as deprecated aliases in `tokens.css`.
- Colors are unchanged.
- See README section 2.3 for the v1 → v2 migration table. The althio.ai website
  still uses the v1 values until it adopts this scale.

## 1.1.0 — 2026-08-16

- Add `tokens.json` (W3C Design Tokens format) for Figma (Tokens Studio) and codegen.
- Add `flutter/althio_tokens.dart` with an `althioTheme()` ThemeData.
- Add the platform-usage guide (README section 7).

## 1.0.0 — 2026-08-16

- Extract the design system from althio.ai: color, typography, spacing, layout,
  shape, gradients, motion.
- Restructure the doc to the standard design-system format; add the specimen sheet.
