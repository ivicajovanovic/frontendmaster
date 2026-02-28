# Web Design Style Kit: Frontend In

## Document Meta
- Product: Frontend In
- Scope: Landing page (single page, 6 sections)
- Visual Direction: Editorial Brutalism for luxury hospitality
- Date: 2026-02-28
- Paired documents:
  - `PRD-Frontend-In-Landing-Page.md`
  - `DESIGN-HANDOFF-Frontend-In.md`

## 1. Brand Direction Sentence
Frontend In is a seven-star Zurich hotel where strict editorial typography, cinematic restraint, and advanced AI hospitality signals create a premium world for frontend designers, investors, and founders.

## 2. Tone System
- Dominant tone: Editorial Authority
- Secondary tone: Reserved Prestige
- Copy rules:
  - Short declarative statements
  - Low-noise vocabulary
  - Avoid startup buzzwords and slang
  - Use exclusion messaging as brand positioning, pending legal review

## 3. Design Principles
1. Typography leads before color and decoration.
2. Structure first, asymmetry second.
3. Use one strong accent color; keep it scarce.
4. Motion must direct attention, not entertain.
5. Every section keeps an obvious conversion path.

## 4. Token System
### 4.1 Color Tokens
```css
:root {
  --color-bg: #121212;
  --color-surface: #1d1c1a;
  --color-text: #f2ece2;
  --color-text-muted: #b6ad9f;
  --color-accent: #c6a46a;
  --color-accent-2: #8f7150;
  --color-border: #39352f;
  --color-success: #4e7a5f;
  --color-danger: #9d4b47;
}
```
- Accent coverage target: max 15% per viewport.
- Avoid pure black/pure white extremes.

### 4.2 Typography Tokens
Recommended families:
- Display serif: `"Canela", "Ivar Display", "Times New Roman", serif`
- Utility sans: `"Suisse Intl", "Neue Haas Grotesk", "Helvetica Neue", Arial, sans-serif`

```css
:root {
  --font-display: "Canela", "Ivar Display", "Times New Roman", serif;
  --font-sans: "Suisse Intl", "Neue Haas Grotesk", "Helvetica Neue", Arial, sans-serif;

  --fs-display-xl: clamp(3rem, 8vw, 7rem);
  --fs-display-l: clamp(2rem, 4.8vw, 4rem);
  --fs-lead: clamp(1.1rem, 2.1vw, 1.5rem);
  --fs-body: 1rem;
  --fs-meta: 0.75rem;

  --lh-display: 0.92;
  --lh-body: 1.55;

  --tracking-display: -0.02em;
  --tracking-meta: 0.08em;
}
```
- Body measure target: 60-78 characters.

### 4.3 Spacing Tokens
```css
:root {
  --space-1: 0.25rem;
  --space-2: 0.5rem;
  --space-3: 0.75rem;
  --space-4: 1rem;
  --space-6: 1.5rem;
  --space-8: 2rem;
  --space-12: 3rem;
  --space-16: 4rem;
  --space-24: 6rem;
  --space-32: 8rem;
}
```
- Section vertical rhythm: default `--space-24`, hero `--space-32`.

### 4.4 Grid Tokens
```css
:root {
  --content-max: 1440px;
  --grid-columns-desktop: 12;
  --grid-columns-tablet: 8;
  --grid-columns-mobile: 4;
  --grid-gutter: clamp(14px, 1.6vw, 28px);
  --page-margin: clamp(18px, 4vw, 80px);
}
```
- Allowed grid breaks: hero statement, art-image intrusion, key CTA moment.

### 4.5 Motion Tokens
```css
:root {
  --dur-utility: 150ms;
  --dur-panel: 300ms;
  --dur-section: 520ms;
  --ease-standard: cubic-bezier(0.2, 0.7, 0.2, 1);
}
```
- Stagger interval: 40-90ms.
- `prefers-reduced-motion`: disable transforms, keep opacity only.

### 4.6 Radius / Border / Shadow
```css
:root {
  --radius-sm: 6px;
  --radius-md: 12px;
  --radius-lg: 20px;
  --border-1: 1px solid var(--color-border);
  --shadow-soft: 0 10px 30px rgba(0,0,0,0.25);
  --shadow-deep: 0 20px 60px rgba(0,0,0,0.4);
}
```
- Brutalist posture: mostly sharp or low-radius surfaces; rounded corners only on form controls and media cards.

## 5. Component Style Rules
### 5.1 Header
- Minimal utility header, sticky, transparent-to-solid transition on scroll.
- One primary CTA only.

### 5.2 Buttons
- Primary: accent fill + dark text, high contrast.
- Secondary: ghost with border.
- Hover: subtle luminosity shift, max 180ms.
- Focus: 2px visible ring with offset.

### 5.3 Role Chips
- Three chips for target audience.
- Select state adds accent underline and slight scale.
- Keyboard parity required.

### 5.4 Cards / Tiles
- B/W default imagery, color reveal for selected curated tiles only.
- Caption in `meta` role, never larger than body.

### 5.5 Form Controls
- Large tap targets (min 44px).
- Error states use `--color-danger` + clear text.
- Single-column on mobile, two-column optional on desktop.

## 6. Section Visual Recipes (6 Sections)
1. Hero Manifesto + Gate: dominant display type, one cinematic media plane.
2. Category Narrative: editorial text bands with controlled rhythm changes.
3. Experience Chapters: 3 chapter tiles (room, dining, atmosphere).
4. Technology Peak: spec strip with high-contrast visual and microcopy.
5. Social Proof: testimonial stack + partner marks.
6. Conversion Footer: low-noise inquiry block with strongest CTA.

## 7. Imagery Direction
- Editorial photography only, no generic stock.
- High dynamic range and consistent grading.
- Protect text-safe negative space in hero/section intros.
- Video usage: one hero loop max, muted, optimized poster fallback.

## 8. Accessibility Baseline
- WCAG 2.2 AA contrast and focus visibility.
- Keyboard access for all interactive elements.
- Semantic heading order (`h1` once).
- Motion reduction support.

## 9. Performance Guardrails
- Target LCP < 2.5s, CLS < 0.1.
- Use responsive image sets (`srcset`, AVIF/WebP fallback strategy).
- Lazy-load non-critical media.
- Limit font payload (2 families, subset, preconnect).

## 10. Content Style Do / Do Not
### Do
- Use exact, high-confidence statements.
- Keep paragraph blocks short.
- Prioritize clarity over flourish.

### Do Not
- Use neon gradients or purple-heavy themes.
- Over-animate all elements.
- Mix too many accents in a single viewport.

## 11. Ready-to-Implement CSS Variable Starter
```css
:root {
  --color-bg: #121212;
  --color-surface: #1d1c1a;
  --color-text: #f2ece2;
  --color-text-muted: #b6ad9f;
  --color-accent: #c6a46a;
  --color-border: #39352f;

  --font-display: "Canela", "Ivar Display", "Times New Roman", serif;
  --font-sans: "Suisse Intl", "Neue Haas Grotesk", "Helvetica Neue", Arial, sans-serif;

  --fs-display-xl: clamp(3rem, 8vw, 7rem);
  --fs-display-l: clamp(2rem, 4.8vw, 4rem);
  --fs-lead: clamp(1.1rem, 2.1vw, 1.5rem);
  --fs-body: 1rem;
  --fs-meta: 0.75rem;

  --space-4: 1rem;
  --space-8: 2rem;
  --space-16: 4rem;
  --space-24: 6rem;

  --dur-utility: 150ms;
  --dur-panel: 300ms;
  --dur-section: 520ms;
  --ease-standard: cubic-bezier(0.2, 0.7, 0.2, 1);
}
```

## 12. Sign-off Checklist
- Token set approved by design + engineering.
- Section recipes mapped to implementation tasks.
- Accessibility checks defined for all interactive patterns.
- Asset standards accepted by content/brand stakeholders.
