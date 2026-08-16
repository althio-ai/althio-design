# Althio Design System

The design system of [althio.ai](https://althio.ai), documented for reuse across applications.
Tokens were extracted from the live site on 2026-08-16. Values the site does not expose
(icon rules, some state styles) are filled in to match the system and marked **Inferred**.
Everything else is **Extracted**.

![Althio design specimen](assets/specimen.png)

## Contents

1. [Design principles](#1-design-principles)
2. [Foundations](#2-foundations) — color, typography, spacing, layout, shape, gradients, motion, accessibility
3. [Components](#3-components)
4. [Patterns](#4-patterns)
5. [Content and voice](#5-content-and-voice)
6. [Token reference](#6-token-reference)
7. [Platform usage](#7-platform-usage) — web/React, Flutter, Figma

Files: `tokens.css` (web), `tokens.json` (W3C format for Figma and codegen),
`flutter/althio_tokens.dart` (Flutter), `specimen/specimen.html` (source of the
image above), `assets/` (renders and site screenshots).

---

## 1. Design principles

- **Editorial and calm.** Big serif statements carry the message. Small sans-serif UI stays quiet.
- **Warm by day, cool by night.** Light sections use warm paper and warm ink. The dark section uses cool navy and frost. One page holds both.
- **Color is scarce.** Pastels decorate. Ink speaks. Accent colors never carry text.
- **Soft, never sharp.** Every corner is round. Buttons are pills. Depth comes from translucency and glow, not drop shadows.
- **The system serves continuity of care.** The visual language is quiet on purpose: it must feel safe at 3 am and professional at 9 am.

---

## 2. Foundations

### 2.1 Brand

**Extracted.** The wordmark is `althio` in lowercase Open Runde, set in Ink on light
surfaces. It sits top-left in navigation. Do not set the wordmark in Charter, in
uppercase, or in an accent color.

### 2.2 Color

Two layers: **primitives** (raw values) and **semantic roles** (what code should use).

#### Primitives — neutrals (Extracted)

| Token | Hex | Note |
|---|---|---|
| `--color-paper` | `#FBF7F0` | Warm off-white. The base of every light section. |
| `--color-ink` | `#23201C` | Warm near-black. Never pure black. |
| `--color-night` | `#0B0F1E` | Cool navy-black. Dark-section background. |
| `--color-frost` | `#EDF1FA` | Cool off-white. Never pure white for text. |
| `--color-white` | `#FFFFFF` | Card surfaces, usually at 72% opacity. |

#### Primitives — pastel accents (Extracted)

| Token | Hex | Token | Hex |
|---|---|---|---|
| `--color-sky` | `#7A9ED0` | `--color-lavender` | `#B9B4DE` |
| `--color-sky-mid` | `#8FADD6` | `--color-lavender-mid` | `#ADA5DC` |
| `--color-sky-soft` | `#A8C6E8` | `--color-clay` | `#D9A08F` |
| `--color-gold` | `#C9AF7C` | `--color-clay-soft` | `#E8B7A6` |

#### Semantic roles (use these in code)

| Role | Value | Use |
|---|---|---|
| `--text-primary` | Ink | Body copy, headings, buttons. |
| `--text-secondary` | Ink 60% | Subcopy, captions, large secondary text. |
| `--text-muted` | Ink 34% | Decorative labels only. |
| `--text-on-dark` | Frost | All text on Night surfaces. |
| `--surface-page` | Paper | Page background. |
| `--surface-card` | White 72% | Cards and panels on paper. |
| `--surface-dark` | Night | The dark section. |
| `--border-hairline` | Ink 8% | Card borders, dividers. |
| `--border-strong` | Ink 15% | Secondary-button borders. |

Rules:

- Text is Ink on Paper, or Frost on Night. There are no other text colors.
- Build hierarchy with the opacity steps of Ink (60%, 34%). Do not add gray hexes.
- Accents appear as chips, avatars, and data marks. They never carry text and never fill large surfaces.
- Warm and cool never mix in one surface: Paper pairs with Ink and Clay; Night pairs with Frost and Sky.

### 2.3 Typography

#### Typefaces (Extracted)

| Role | Family | Source |
|---|---|---|
| Headings, pull quotes | **Charter** (system serif) | `Charter, "Iowan Old Style", Georgia, "Times New Roman", serif`. No webfont. |
| Body, UI, captions | **Open Runde** | [lauridskern/open-runde](https://github.com/lauridskern/open-runde) v1.0.1 via jsDelivr. Weights 400/500/600/700. |

- Set all headings in Charter 500. Use Charter 600 only for small card titles.
- Set all UI text, body text, buttons, and captions in Open Runde.
- Use Charter italic for pull quotes and for one gradient accent phrase in a headline.
- Do not use Charter for buttons or navigation. Do not use Open Runde for headings.

#### Type scale v2 (Redesigned per guidelines)

A **Major Third (1.25) modular scale**, base 16px, in rem. High heading contrast
suits a marketing site; the site's extracted v1 scale had 15 ad-hoc sizes with
near-duplicates (44/40, 17/16/15.5/15, 12.5/12) — v2 consolidates to 10 steps:
**13 / 14 / 16 / 20 / 25 / 31 / 39 / 49 / 61 / 76**.

| Token | Family / weight | Size | Line height | Letter spacing | Use |
|---|---|---|---|---|---|
| `--text-display` | Charter 500 | 76px | 1.1 | −0.025em | Hero headline |
| `--text-h1-sub` | Charter 500 | 61px | 1.1 | −0.025em | Subpage hero |
| `--text-h2` | Charter 500 | 49px | 1.15 | −0.02em | Section headline |
| `--text-h3` | Charter 500 | 39px | 1.2 | −0.02em | Sub-section headline |
| `--text-h4` | Charter 500 | 31px | 1.25 | −0.015em | Card headline |
| `--text-pull` | Charter 400 italic | 25px | 1.35 | 0 | Editorial aside |
| `--text-h5` | Charter 600 | 20px | 1.4 | −0.01em | Small card title |
| `--text-lead` | Open Runde 400 | 20px | 1.5 | 0 | Hero subcopy |
| `--text-body` | Open Runde 400 | 16px | 1.6 | 0 | Paragraphs, lists |
| `--text-sm` | Open Runde 500/400 | 14px | 1.55 | 0 | Nav, buttons, small copy |
| `--text-caption` | Open Runde 400 | 13px | 1.5 | 0 | Metadata, timestamps |
| eyebrow (caption var.) | Open Runde 500 | 13px | 1.5 | +0.14em, caps | Section labels |

Rules:

- Headline tracking: −2.5% of font size at 61–76px, −2% at 39–49px, −1.5% at 31px, −1% for small serif.
- Line height per guidelines: 1.1–1.25 headings, 1.5–1.6 text. Body measure stays 45–75 characters (`--prose-max`).
- Display sizes are fluid in `tokens.css` via `clamp()` (display: 40px phone → 76px desktop). Fixed sizes below 31px do not scale.
- Body text never below 16px; captions never below 13px.

#### Migration from the extracted v1 scale (for updating the website)

| v1 (extracted) | v2 | Change |
|---|---|---|
| Display 78 / lh 1.06 | 76 / lh 1.1 | On-scale, slightly looser leading |
| H2 52 | 49 | On-scale |
| H2-alt 44, H3 40 | H3 39 | Merged — one sub-section size |
| H4 30 | 31 | On-scale |
| Pull 24 | 25 | On-scale |
| H5 21 | 20 | On-scale |
| Lead 19 | 20 | On-scale |
| Body 17, 16, 15.5, 15 | 16 | Merged — one body size |
| UI 15, link 14.5, button 14, 13.5 | 14 | Merged — one UI size |
| Caption 12.5, eyebrow 12.5, micro 12 | 13 | Merged — one caption size |

v1 token names still resolve in `tokens.css` as deprecated aliases
(`--text-ui` → `--text-sm`, etc.). Migrate, then delete the alias block.

### 2.4 Spacing (Extracted values, scale formalized)

A 4px base scale. Site measurements cluster on these steps (normalized to the 1440 design size):

| Token | Value | Observed use |
|---|---|---|
| `--space-2` | 8px | Chip gaps, icon-to-label |
| `--space-3` | 12px | Grid gutters, list gaps |
| `--space-4` | 16px | Component-internal padding |
| `--space-6` | 24px | Card padding, related-block gaps |
| `--space-7` | 28px | Large card padding |
| `--space-8` | 32px | Sub-section gaps |
| `--space-14` | 56px | Section-internal group gaps |
| `--space-16` | 64px | Large group separations |
| `--space-24`–`--space-32` | 96–128px | Section padding (see layout) |

Rule: related items sit closer than unrelated items. Never use an off-scale value
when a scale step is within 2px.

### 2.5 Layout and grid (Extracted)

| Token | Value | Use |
|---|---|---|
| `--container-max` | 1120px | Main content column, centered |
| `--prose-max` | 760px | Long-form text measure (~66 characters) |
| `--section-pad-y` | 130px | Vertical padding between major sections (site range 96–170px) |

- One centered column. No multi-column dashboard grids on marketing surfaces.
- Card rows use 2–3 equal columns with 12px gutters inside the container.
- **Inferred — breakpoints** (Framer defaults): desktop ≥1200px, tablet 810–1199px, phone <810px.

### 2.6 Shape and depth (Extracted)

| Token | Value | Use |
|---|---|---|
| `--radius-pill` | 999px | Buttons, chips |
| `--radius-card` | 28px | Large cards and panels |
| `--radius-panel` | 18px | Inner panels; chat bubble: `18px 18px 18px 5px` (tail corner) |
| `--radius-tile` | 14px | Small tiles |
| `--shadow-frost-glow` | `rgba(237,241,250,0.45) 0 0 8px` | Glow on dark-section elements |
| `--shadow-focus-ring` | `rgba(122,158,208,0.38) 0 0 0 1.25px` | Sky-tinted ring |
| `--shadow-halo` | white 14% ring + white 65% glow | Emphasis halo on light surfaces |

Radius follows hierarchy: the bigger the element, the bigger the radius. Never one
uniform radius on everything. Depth comes from translucent white surfaces
(`--surface-card`) with hairline borders — not from drop shadows.

### 2.7 Gradients and texture (Extracted)

| Token | Definition | Use |
|---|---|---|
| `--gradient-aurora` | 3 pastel radials (`#D9E7F6`, `#F6E0D8`, `#E5E3F2`) on Paper | Hero background only. Confine to the hero band; never tile it down the page. |
| `--gradient-accent-text` | `linear-gradient(100deg, #5B9BE6, #A9C4EE 45%, #6FA5E8)`, clipped to text | One italic phrase per hero headline. The live site clips a soft blue image; this approximates it. |
| `--gradient-night-veil` | `rgba(8,10,22)` 55% → 18% → 58% vertical | Depth overlay on the dark section. |
| `--gradient-hairline` | transparent → `rgba(237,241,250,0.35)` → transparent | Dividers on dark surfaces that fade at both ends. |
| Starfield | 1–1.5px white radial dots, scattered, 50–85% opacity | Decorative texture in the night section only. |

### 2.8 Motion (Extracted)

| Token | Value | Use |
|---|---|---|
| `--ease-gentle` | `cubic-bezier(0.22, 0.9, 0.3, 1)` | The signature curve: all movement and reveals |
| `--duration-fast` | 200ms | Color and opacity changes (hover) |
| `--duration-base` | 250ms | Border-color, small shifts |
| `--duration-slow` | 350ms | Transform: slides, reveals, scroll-ins |

- Animate only `transform`, `opacity`, `color`, and `border-color`. Never animate layout properties.
- Name transition properties explicitly. Do not use `transition: all`.
- **Inferred:** honor `prefers-reduced-motion: reduce` by removing transforms and keeping opacity fades.

### 2.9 Iconography and imagery (Inferred)

The site uses almost no icons; text and typography carry meaning.

- If an icon is required: simple geometric line icons, 1.5px stroke, set in `--text-secondary`, 16–20px, never in colored circles.
- Decorative texture is limited to the aurora wash and the starfield. No stock photography, no illustration sets, no emoji as design elements.
- Product imagery appears as framed UI mockups inside `--surface-card` panels.

### 2.10 Accessibility

Contrast pairs on this palette (computed):

| Pair | Ratio | Verdict |
|---|---|---|
| Ink on Paper | 14.9:1 | Body text: pass AAA |
| Frost on Night | 15.9:1 | Body text on dark: pass AAA |
| Ink 60% on Paper | ≈4.2:1 | Large/secondary text only. **Do not use for body copy.** |
| Ink 34% on Paper | ≈2.1:1 | Decorative only. Never for information. |
| Paper on Ink (buttons) | 14.9:1 | Pass |
| Any accent as text | 2–4:1 | **Fails. Accents never carry text.** |

Rules (Inferred, standard practice):

- Touch targets: 44px minimum. The pill button (14px text + 12px vertical padding) meets it.
- Focus: every interactive element shows `--shadow-focus-ring`. Never remove outline without a replacement.
- The accent-text gradient is decoration on top of a serif that is already legible; do not put critical information only in the gradient phrase.
- Do not encode meaning in color alone; pair accent chips with labels.

---

## 3. Components

### 3.1 Primary button

- Ink background, Paper text, `--radius-pill`, `--text-button`, padding ~12px 22px.
- Hover: opacity/color shift at `--duration-fast`. Focus: `--shadow-focus-ring`.
- **When to use:** the one primary action per view ("Request a demo"). One per section.
- **Don't:** never two primary buttons side by side; never accent-colored buttons.

### 3.2 Secondary button

- `--surface-card` background, Ink text, `--border-strong` border, same pill geometry.
- **When to use:** the alternative action next to a primary ("How it works").

### 3.3 Card

- `--surface-card`, `--radius-card`, `--border-hairline`, padding `--space-6`–`--space-7`.
- Title in Charter (`--text-h5` or `--text-h4`), body in Open Runde.
- **Don't:** no drop shadows, no colored left borders, no icon-in-circle headers.

### 3.4 Chat bubble

- White, `--radius-panel` with one 5px tail corner, `--text-ui` body, `--text-micro` timestamp in `--text-secondary` below.

### 3.5 Eyebrow label

- `--text-eyebrow`: 12.5px Open Runde 500, uppercase, +0.14em tracking, `--text-secondary`.
- Sits above section headlines. **Don't** use it as body emphasis.

### 3.6 Navigation

- Wordmark left; links in `--text-ui`; primary button right as a pill.
- Links: Ink, hover shifts color at `--duration-fast`. No underlines at rest.

### 3.7 Night section

- `--surface-dark` + `--gradient-night-veil` + starfield. Text in Frost; dividers use `--gradient-hairline`; glows use `--shadow-frost-glow`.
- **When to use:** one emotional "always on" section per page. Never stack two.

---

## 4. Patterns

**Page anatomy (Extracted from althio.ai):** aurora hero → editorial claim sections
(alternating text and framed mockups) → night section (the 3 am moment) → light
close with primary CTA → footer.

- Each section makes one claim: one headline, one supporting sentence, one visual.
- The dark section is the emotional pivot; place it after the rational argument.
- Hero budget: wordmark, one headline (with one gradient phrase), one lead paragraph, two buttons.
- Serif carries claims; sans carries evidence (captions, metadata, UI text).

---

## 5. Content and voice

**Extracted from site copy:**

- Short declarative sentences. "Therapy is one hour a week. Althio holds the space between."
- Numbers are concrete: "One hour of therapy. 167 hours of life." "2 signals · 1 flag · 40-second read."
- Time is human: "Tue 11:42 pm", "3 am counts too."
- Interpuncts (`·`) join metadata fragments; the arrow (`→`) marks inline links: "Read how we build for safety →".
- Curly quotes, true ellipsis (`…`), no exclamation marks, no hype adjectives.
- Safety statements are plain and unhedged: "Althio never diagnoses or changes a treatment plan."

---

## 6. Token reference

All tokens live in [`tokens.css`](tokens.css). Import it first, then use semantic
aliases in application code:

```html
<link rel="stylesheet" href="tokens.css">
<style>
  body {
    font-family: var(--font-sans);
    color: var(--text-primary);
    background-color: var(--surface-page);
  }
  h1 {
    font-family: var(--font-serif);
    font-weight: 500;
    font-size: var(--text-display);
    letter-spacing: -0.025em;
    line-height: 1.06;
  }
  .cta {
    background: var(--color-ink);
    color: var(--color-paper);
    border-radius: var(--radius-pill);
    transition: opacity var(--duration-fast) ease;
  }
</style>
```

Naming convention: primitives are `--color-*`, `--text-*` (scale), `--space-*`,
`--radius-*`, `--shadow-*`, `--gradient-*`, `--duration-*`, `--ease-*`. Semantic
aliases (`--text-primary`, `--surface-card`, `--border-hairline`) map primitives to
roles; application code uses the aliases so a palette change stays one-file.

---

## 7. Platform usage

`tokens.json` (W3C Design Tokens format) is the source of record for non-CSS
platforms. `tokens.css` and `flutter/althio_tokens.dart` are derived from it —
when you change a value, change all three.

### Web / React

Import `tokens.css` and use the custom properties (see section 6). In React,
reference them in any styling approach: plain CSS, CSS modules, styled-components
(`color: var(--text-primary)`), or map them into a Tailwind theme via
`@theme` / `tailwind.config` values.

### Flutter

Copy `flutter/althio_tokens.dart` into your project (or reference this repo).

```dart
MaterialApp(theme: althioTheme())
// or directly:
Text('Patients check in', style: AlthioText.h4)
Container(color: AlthioColors.surfaceCard)
```

Fonts: bundle Open Runde OTFs (400/500/600/700) from
[lauridskern/open-runde](https://github.com/lauridskern/open-runde) in
`pubspec.yaml`. Charter exists on iOS/macOS; on Android bundle Bitstream Charter
or accept the serif fallback.

### Figma

Install the **Tokens Studio for Figma** plugin, then import `tokens.json`
(Tools → Load from file/URL, or sync it straight from this GitHub repo). Colors,
typography, spacing, and radii arrive as Figma variables/styles.

### Other platforms

Feed `tokens.json` to [Style Dictionary](https://styledictionary.com) to generate
Swift, Kotlin, Compose, or any other format:

```bash
npx style-dictionary@latest build --platform ios  # with a config listing tokens.json as source
```

Reference screenshot of the live site:

![althio.ai hero](assets/hero.png)
