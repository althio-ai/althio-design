# Althio Design System

Design tokens and rules extracted from [althio.ai](https://althio.ai) on 2026-08-16.
Use this document to keep the Althio look consistent across applications.

![Althio design specimen](assets/specimen.png)

Reference screenshot of the live site:

![althio.ai hero](assets/hero.png)

## Files

- `tokens.css` — all tokens as CSS custom properties. Import this file first.
- `specimen/specimen.html` — the source of the specimen image above.
- `assets/` — rendered specimen and site screenshots.

## Typefaces

| Role | Family | Source |
|---|---|---|
| Headings, pull quotes | **Charter** (system serif) | Stack: `Charter, "Iowan Old Style", Georgia, "Times New Roman", serif`. No webfont. |
| Body, UI, captions | **Open Runde** | [lauridskern/open-runde](https://github.com/lauridskern/open-runde) v1.0.1 via jsDelivr. Weights 400 / 500 / 600 / 700. |

Rules:

- Set all headings in Charter, weight 500. Use weight 600 only for small card titles (21px).
- Set all UI text, body text, buttons, and captions in Open Runde.
- Use Charter italic for pull quotes and for the gradient accent phrase in a headline.
- Do not use Charter for buttons or navigation. Do not use Open Runde for headings.

## Type scale (desktop, 1440px)

| Token | Family / weight | Size | Line height | Letter spacing | Use |
|---|---|---|---|---|---|
| Display / H1 | Charter 500 | 78px | 1.06 | −0.025em | Hero headline |
| H2 | Charter 500 | 52px | 1.12 | −0.02em | Section headline |
| H2 alt | Charter 500 | 44px | 1.15 | −0.02em | Secondary section headline |
| H3 | Charter 500 | 40px | 1.15 | −0.02em | Sub-section headline |
| H4 | Charter 500 | 30px | 1.2 | −0.015em | Card headline |
| Pull quote | Charter 400 italic | 24px | 1.4 | 0 | Editorial aside |
| H5 | Charter 600 | 21px | 1.6 | −0.01em | Small card title |
| Lead | Open Runde 400 | 19px | 1.6 | 0 | Hero subcopy |
| Body | Open Runde 400 | 17px | 1.6 | 0 | Paragraphs, lists |
| Body small | Open Runde 400 | 16px | 1.6 | 0 | Dense copy |
| UI / nav | Open Runde 500 | 15px | 1.5 | 0 | Navigation links |
| Button | Open Runde 500 | 14px | 1.6 | 0 | All buttons |
| Caption | Open Runde 400 | 12.5px | 1.6 | 0 | Metadata lines |
| Eyebrow | Open Runde 500 | 12.5px | 1.6 | +0.14em, uppercase | Section labels |
| Micro | Open Runde 400 | 12px | 1.6 | 0 | Timestamps |

Headline letter spacing is negative and scales with size: −2.5% of the font size at 78px, −2% at 40–52px.

## Colors

### Neutrals

| Token | Hex | Use |
|---|---|---|
| Paper | `#FBF7F0` | Page background. The base of every light section. |
| Ink | `#23201C` | Primary text. Dark buttons. Warm near-black, never pure black. |
| Ink 60% | `rgba(35,32,28,0.6)` | Secondary text, subcopy. |
| Ink 34% | `rgba(35,32,28,0.34)` | Muted text, hairline borders. |
| Night | `#0B0F1E` | Background of the dark "night" section. Cool navy-black. |
| Frost | `#EDF1FA` | Text on dark surfaces. Never pure white for text. |
| White | `#FFFFFF` | Card surfaces, often at 72% opacity over paper. |

### Pastel accents

Accents appear as small chips, avatars, and data marks. They never carry text.

| Token | Hex |
|---|---|
| Sky | `#7A9ED0` |
| Sky mid | `#8FADD6` |
| Sky soft | `#A8C6E8` |
| Lavender | `#B9B4DE` |
| Lavender mid | `#ADA5DC` |
| Clay | `#D9A08F` |
| Clay soft | `#E8B7A6` |
| Gold | `#C9AF7C` |

Rules:

- Warm light theme, cool dark theme. Paper and clay are warm; night and frost are cool.
- Text is ink on paper, or frost on night. No other text colors.
- Use opacity steps of ink (60%, 34%) for hierarchy. Do not add gray hexes.

## Gradients

| Token | CSS | Use |
|---|---|---|
| Aurora wash | `radial-gradient(44% 40% at 30% 20%, #D9E7F6 0%, transparent 100%), radial-gradient(36% 34% at 74% 46%, #F6E0D8 0%, transparent 100%), radial-gradient(30% 30% at 55% 10%, #E5E3F2 0%, transparent 100%)` on paper | Hero background. Soft pastel radials (blue, peach, lilac) over `#FBF7F0`. |
| Accent text | `linear-gradient(100deg, #5B9BE6, #A9C4EE 45%, #6FA5E8)` with `background-clip: text` | One italic phrase inside the hero headline. The live site clips a soft blue image; this gradient approximates it. |
| Night veil | `linear-gradient(rgba(8,10,22,0.55) 0%, rgba(8,10,22,0.18) 42%, rgba(8,10,22,0.58) 100%)` | Overlay on the dark section for depth. |
| Hairline | `linear-gradient(90deg, transparent, rgba(237,241,250,0.35) 12%, rgba(237,241,250,0.35) 88%, transparent)` | Divider lines on dark surfaces that fade at both ends. |
| Starfield | 1–1.5px white radial dots at scattered positions | Decorative dots in the night section. |

## Shape and depth

| Token | Value | Use |
|---|---|---|
| Pill | `999px` | All buttons and chips. |
| Card | `28px` | Large cards and panels. |
| Panel | `18px` | Inner panels. Chat bubble: `18px 18px 18px 5px` (tail corner). |
| Tile | `14px` | Small tiles. |
| Frost glow | `rgba(237,241,250,0.45) 0 0 8px` | Soft glow on dark-section elements. |
| Focus ring | `rgba(122,158,208,0.38) 0 0 0 1.25px` | Sky-tinted ring. |
| Halo | `rgba(255,255,255,0.14) 0 0 0 5px, rgba(255,255,255,0.65) 0 0 18px` | Emphasis halo on light surfaces. |

Depth comes from translucency and glow, not drop shadows. Cards sit on paper as `rgba(255,255,255,0.72)` with a `rgba(35,32,28,0.08)` border.

## Components

- **Primary button**: ink background, paper text, pill radius, 14px Open Runde 500, padding ~12px 22px.
- **Secondary button**: translucent white background, ink text, 1px ink-15% border, pill radius.
- **Card**: white at 72% opacity, 28px radius, 1px ink-8% border.
- **Chat bubble**: white, 18px radius with one 5px tail corner, 15px text, micro timestamp below.
- **Eyebrow label**: 12.5px uppercase Open Runde 500, +0.14em tracking, ink-60%.
- **Dark section**: night background, veil gradient, frost text, starfield dots, hairline dividers.

## Quick start

```html
<link rel="stylesheet" href="tokens.css">
<style>
  body {
    font-family: var(--font-sans);
    color: var(--color-ink);
    background-color: var(--color-paper);
    background-image: var(--gradient-aurora);
  }
  h1 {
    font-family: var(--font-serif);
    font-weight: 500;
    font-size: var(--text-display);
    letter-spacing: -0.025em;
    line-height: 1.06;
  }
</style>
```

## Voice of the design

- Editorial and calm. Big serif statements, small sans UI.
- Warm paper by day, cool navy by night. One page can hold both.
- Color is scarce. Pastels decorate; ink speaks.
- Every corner is round. Buttons are pills. Nothing is sharp.
