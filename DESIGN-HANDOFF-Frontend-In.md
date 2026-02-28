# Design Handoff: Frontend In Landing Page

## Document Meta
- Product: Frontend In
- Scope: V1 landing page with 6 sections
- Date: 2026-02-28
- Depends on:
  - `PRD-Frontend-In-Landing-Page.md`
  - `WEB-DESIGN-STYLE-KIT-Frontend-In.md`

## 1. Handoff Intent
Translate approved strategy and style system into build-ready instructions for frontend implementation, QA, analytics, and content delivery.

## 2. Build Scope
- In-scope:
  - One-page site
  - 6 major sections
  - Sticky header
  - Role gate interaction
  - Inquiry form with validation
  - Analytics events
- Out-of-scope (v1):
  - Multi-page booking flow
  - CMS integration
  - Native app

## 3. Section-by-Section Spec
## Section 1: Hero Manifesto + Gate
- ID: `#hero`
- Goal: establish positioning in first 5 seconds and trigger first conversion action.
- Required elements:
  - `h1`: Frontend In
  - Lead line with target audience
  - Location line (bohemian Zurich)
  - Role chips: Frontend Designer, Investor, Founder
  - Primary CTA button
- Layout:
  - Desktop: 12-col; text block spans 6-7 cols, media spans 5-6 cols
  - Mobile: stacked, CTA above fold
- Interaction:
  - Intro reveal once on first viewport entry
  - Role chip select state emits analytics event
- Acceptance:
  - CTA visible without scroll on major desktop sizes
  - Keyboard can select chips and trigger CTA

## Section 2: Why This Exists
- ID: `#narrative`
- Goal: explain category logic and differentiation.
- Required elements:
  - 3 thesis blocks
  - Secondary CTA to tech section
- Layout:
  - Alternating editorial bands (text-heavy then breathing media/text zone)
- Interaction:
  - Stagger reveal for thesis cards (40-90ms)
- Acceptance:
  - Each thesis readable in under 8 seconds
  - Visual rhythm differs from hero but preserves hierarchy

## Section 3: Experience Chapters
- ID: `#experience`
- Goal: show experiential value across suites, dining, atmosphere.
- Required elements:
  - 3 curated chapter tiles
  - Short copy for each chapter
  - CTA: Explore Signature Experiences
- Layout:
  - Desktop: asymmetrical 2+1 pattern
  - Mobile: single column, fixed order room -> dining -> atmosphere
- Interaction:
  - B/W to color reveal on hover/focus for selected tiles only
- Acceptance:
  - Keyboard focus reproduces hover effect
  - Imagery remains legible with text overlays

## Section 4: Technology at Peak
- ID: `#technology`
- Goal: prove android + AI claims with concrete signals.
- Required elements:
  - Android staff block
  - AI concierge block
  - Privacy/control microcopy
  - CTA: See Systems Overview
- Layout:
  - Product-authority strip, one high-contrast visual + specs panel
- Interaction:
  - Micro-interactions on spec rows (120-180ms)
- Acceptance:
  - Claims are concrete (no vague superlatives without examples)
  - Copy remains concise and scannable

## Section 5: Social Proof + Investor Value
- ID: `#proof`
- Goal: increase trust for founder/investor visitors.
- Required elements:
  - 2-3 testimonial blocks
  - Partner marks area
  - Event/residency mini-list
  - CTA: Schedule Investor Visit
- Layout:
  - Magazine-inspired feature stack with pull quote rhythm
- Interaction:
  - Subtle card/panel transition (240-360ms)
- Acceptance:
  - At least one trust signal visible before Section 6 entry

## Section 6: Conversion Footer
- ID: `#inquiry`
- Goal: capture qualified booking demand.
- Required elements:
  - Form fields: full name, email, role, intent, preferred timeframe, message
  - Consent/policy line
  - Primary submit CTA
- Layout:
  - Low-noise utility layout, max width constrained for readability
- Interaction:
  - Inline validation + clear success state
- Acceptance:
  - Form completion in <= 90 seconds for test users
  - Error states are explicit and accessible

## 4. Global Components
1. Sticky Header
- Logo wordmark left, nav anchors center/right, primary CTA right.

2. CTA Buttons
- Variants: primary, secondary.
- Use tokens from style kit only.

3. Role Chips
- Single-select preferred for analytics clarity.

4. Form Elements
- Inputs, select, textarea, checkbox/radio as needed.

## 5. Responsive Behavior
- Breakpoints (suggested):
  - Mobile: <= 767
  - Tablet: 768-1199
  - Desktop: >= 1200
- Rules:
  - Collapse asymmetry progressively
  - Preserve section order and narrative hierarchy
  - Keep primary CTA persistently discoverable

## 6. Motion Mapping
- Utility hover/focus: 120-180ms
- Card transitions: 240-360ms
- Section entries: 400-700ms
- Reduced motion:
  - Remove transform-heavy animation
  - Keep opacity transitions only

## 7. Content Mapping
- Copy source of truth: content markdown or JSON file (to be created by Content Lead)
- Required keys:
  - `hero.title`, `hero.subhead`, `hero.location`
  - `narrative.theses[]`
  - `experience.chapters[]`
  - `technology.items[]`
  - `proof.testimonials[]`
  - `inquiry.formLabels`

## 8. Asset Handoff Spec
- Folder proposal:
  - `/assets/hero/`
  - `/assets/experience/`
  - `/assets/technology/`
  - `/assets/proof/`
- Naming convention:
  - `section-purpose-variant.ext`
  - Example: `hero-cinematic-main.avif`
- Minimum media quality:
  - Hero: 2560px wide source
  - Chapter images: 1600px wide source

## 9. Analytics Implementation Map
Emit events:
- `role_selected` with `{ role }`
- `cta_primary_click` with `{ section }`
- `section_view` with `{ section_id }`
- `form_start`
- `form_submit_success`

Optional properties:
- `experiment_variant`
- `device_type`

## 10. Accessibility QA Checklist
- Full keyboard navigation through all controls.
- Visible focus states on dark and light surfaces.
- Semantic heading order and landmark usage.
- Alt text present for informative images.
- Color contrast meets AA.

## 11. Performance QA Checklist
- LCP target met on mobile profile.
- Non-critical media lazy-loaded.
- Fonts subset and preloaded appropriately.
- No layout shifts from late-loading media.

## 12. Legal/Brand Guardrail Notes
- Exclusion phrasing requires legal approval before production release.
- Recommended implementation path:
  - Keep provocative brand line in marketing context
  - Add compliance-safe policy copy in inquiry/legal area

## 13. Engineering Task Breakdown
1. Scaffold page structure with semantic sections.
2. Implement token system from style kit.
3. Build global header and CTA primitives.
4. Implement sections 1-6 with placeholder media.
5. Wire analytics events.
6. Implement inquiry form validation and success state.
7. Run accessibility and performance pass.

## 14. Definition of Done
- All 6 sections implemented and responsive.
- Style kit tokens used consistently.
- Primary and secondary conversion paths are functional.
- Analytics events verified in test environment.
- Accessibility and performance baselines pass.
