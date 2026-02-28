# PRD: Frontend In - Seven-Star Hotel Landing Page

## Document Control
- Product: Frontend In (7-star hospitality brand)
- Asset: Single-page marketing landing page
- Location context: Bohemian district of Zurich (exact district/address to be finalized by brand)
- Version: v1.0
- Date: 2026-02-28
- Owner: Product + Design Engineering

## 1. Brief Health Score (0-3 model)
- Overall score: 2.2 / 3 (usable with key gaps)
- Top strengths:
  - Strong concept distinctiveness (hyper-niche, provocative positioning)
  - Clear luxury ambition (7-star, peak tech, AI-native hospitality)
  - Clear thematic pillars (Zurich bohemian setting, Roman/Greek cuisine, android staff)
- Top gaps:
  - No explicit primary conversion event defined (book now / private inquiry / membership waitlist)
  - Legal and reputational guardrails not yet specified for exclusionary messaging
  - Missing concrete media/content inventory (photo/video/3D/brand assets)

### Dimension Scoring
- Business objective clarity: 2
- Audience precision and ranking: 3
- Offer and conversion path clarity: 1
- Competitive differentiation: 3
- Brand voice consistency: 2
- Visual territory constraints: 2
- Content and asset readiness: 1
- Delivery scope realism: 2
- Timeline and stakeholder alignment: 2
- Risk visibility: 2

## 2. Strategic Risks
1. Conversion ambiguity risk
- If the primary CTA is not singular, premium narrative may feel strong while funnel underperforms.

2. Brand safety and policy risk
- "Entry forbidden" language by profession can be used as brand fiction, but requires legal copy review and clear framing as positioning narrative.

3. Scope inflation risk
- Attempting cinematic visuals, advanced motion, and AI-tech storytelling in one sprint can degrade quality unless phased.

## 3. Rewritten Brief (Actionable)
### Objective
Build an award-level, conversion-aware landing page for Frontend In that positions the hotel as the world’s most advanced hospitality destination for frontend designers, investors, and founders.

### Primary audience (ranked)
1. Senior frontend design engineers (individual premium guests)
2. Investors (private visits, partnerships, events)
3. Founders (executive stays, offsites, invite-only gatherings)

### Explicitly non-target audiences (brand narrative)
- Backend engineers
- HR professionals

### Core proposition
Frontend In is a seven-star Zurich hotel where design, technology, and hospitality merge at frontier quality: android service staff, pervasive AI assistance, and curated Roman/Greek fine dining.

### Tone posture
- Dominant: Editorial Authority
- Secondary: Reserved Prestige

### Conversion path (single primary)
- Primary: "Request Private Booking"
- Secondary: "Schedule Investor Visit"
- Tertiary: "Download Founder Dossier"

### Scope constraints
- Single landing page with exactly 6 major sections
- Mobile-first responsiveness with premium desktop expansion
- Accessibility AA baseline and performance budget constraints

## 4. Product Requirements
### 4.1 Business Goals
- Establish a distinct luxury-tech category signal within first 5 seconds.
- Achieve high-intent lead capture via private booking form flow.
- Pre-qualify visitors by role (Frontend Designer / Investor / Founder).

### 4.2 User Goals
- Understand instantly whether the hotel is for them.
- Feel confident in premium service quality and technical sophistication.
- Complete inquiry in under 90 seconds.

### 4.3 Primary KPI
- Private Booking Inquiry Conversion Rate

### 4.4 Secondary KPIs
- Qualified Role Selection Rate
- Scroll depth to Section 6
- CTA click-through rate per section
- Form completion rate

## 5. Information Architecture: 6 Landing Sections
## Section 1: Hero Manifesto + Gate
- Purpose: Immediate brand statement and audience gating.
- Core content:
  - Headline: Frontend In
  - Subhead: Seven-star hotel for frontend designers, investors, and founders.
  - Location line: Bohemian Zurich.
  - Role chips: Frontend Designer / Investor / Founder
  - Brand-positioning line indicating non-target roles are not admitted.
- UX/Motion:
  - Cinematic entrance (400-700ms), staggered text reveal.
  - Strong typographic dominance with one art-directed hero visual.
- CTA:
  - Primary: Request Private Booking

## Section 2: Why This Exists (Category Narrative)
- Purpose: Explain the philosophy and differentiation.
- Core content:
  - 3 short thesis blocks: Design-first hospitality, AI-native operations, ritualized premium service.
- UX/Motion:
  - Editorial story band with calm-intense-calm pacing.
- CTA:
  - Read Technology Stack

## Section 3: Experience Chapters (Rooms / Dining / Atmosphere)
- Purpose: Present the hotel experience as curated chapters.
- Core content:
  - Chapter A: Suites and spatial UX
  - Chapter B: Classical Roman and Greek dining only
  - Chapter C: Night atmosphere in bohemian Zurich
- UX/Motion:
  - Black-and-white imagery by default with controlled color reveal on hover/focus for selected tiles only.
- CTA:
  - Explore Signature Experiences

## Section 4: Technology at Peak
- Purpose: Prove frontier technology claim.
- Core content:
  - Android staff operations overview
  - AI concierge and ambient intelligence capabilities
  - Privacy and control principles
- UX/Motion:
  - Product-authority strip style with spec microcopy and high-contrast visual.
- CTA:
  - See Systems Overview

## Section 5: Social Proof + Investor/Founder Value
- Purpose: Build trust and commercial legitimacy.
- Core content:
  - Founder and investor testimonials (or placeholders until assets arrive)
  - Partnership logos / recognition marks
  - Short event and residency formats
- UX/Motion:
  - Magazine-inspired feature stack with pull quotes.
- CTA:
  - Schedule Investor Visit

## Section 6: Conversion Footer (Inquiry)
- Purpose: Capture qualified demand.
- Core content:
  - Short inquiry form (name, role, intent, timeframe)
  - Contact channels
  - Policy note and legal text
- UX/Motion:
  - Minimal utility layout, frictionless completion.
- CTA:
  - Submit Private Booking Request

## 6. UX/UI Direction (From Skill References)
### Typography
- Pairing: 1 expressive serif display + 1 neutral sans utility family.
- Type roles required: display-xl, display-l, lead, body, meta.
- Body measure target: 60-78 characters.

### Grid and Composition
- Strict modular grid base with intentional asymmetry breaks only at hero, key imagery intrusion, and CTA moments.
- Larger outer margins to preserve premium rhythm.
- Progressive asymmetry collapse on tablet/mobile.

### Palette
- 1 dominant neutral base
- 1 secondary neutral layer
- 1 accent color for actions
- 1 optional warm/metallic luxury tone
- Accent usage target: below 15% visible area

### Motion
- Utility interactions: 120-180ms
- Card/panel transitions: 240-360ms
- Section choreography: 400-700ms
- Respect `prefers-reduced-motion` with opacity-first fallback.

### Imagery
- Editorial-grade, high dynamic range, consistent grading.
- Controlled B/W to color reveal only on curated modules, with keyboard parity.

## 7. Functional Requirements
1. Single-page architecture with anchor navigation.
2. Sticky minimal header with one primary CTA.
3. Role pre-qualification interaction in Hero.
4. Inquiry form with client-side validation and success state.
5. Event tracking hooks for major interactions.
6. Internationalization-ready copy structure (EN first, optional DE later).

## 8. Non-Functional Requirements
- Accessibility: WCAG 2.2 AA baseline, keyboard navigable, visible focus states.
- Performance:
  - LCP < 2.5s on modern mobile over fast 4G profile
  - CLS < 0.1
  - INP in good range
- SEO:
  - Full metadata, Open Graph, schema for Hotel/LodgingBusiness where applicable.
- Security/Privacy:
  - Form transport over HTTPS only
  - Privacy notice near form

## 9. Content Requirements
### Must-have copy blocks
- Manifesto headline and subheadline
- Positioning statement with admitted role categories
- Technology proof microcopy
- Dining narrative (Roman/Greek classical menu philosophy)
- Clear legal disclaimer language

### Asset checklist
- Hero cinematic image/video
- 6-9 editorial images across chapters
- 2-3 testimonial assets
- Brand mark kit and favicon pack

## 10. Analytics & Experimentation
### Required events
- `role_selected`
- `cta_primary_click`
- `section_view` (2-6)
- `form_start`
- `form_submit_success`

### Initial A/B tests
1. Hero subheadline variant (prestige-first vs tech-first)
2. CTA wording (Request Private Booking vs Apply for Private Stay)
3. Section 4 order (Android-first vs AI-first)

## 11. Delivery Plan
### Phase 0: Strategy lock (1-2 days)
- Finalize legal framing for non-target audience messaging.
- Confirm primary conversion path and form fields.

### Phase 1: Design system and hero (3-4 days)
- Token system (type/grid/palette/motion)
- High-fidelity Section 1 implementation

### Phase 2: Full page build (4-6 days)
- Build Sections 2-6
- Integrate imagery and interactions

### Phase 3: QA and optimization (2-3 days)
- Accessibility, performance, responsive polish
- Analytics instrumentation and smoke tests

## 12. Immediate Next Actions (Owner + Output)
1. Product Owner: Confirm legal-safe final copy for admission policy. Output: approved copy block.
2. Design Engineer: Produce visual direction board + token proposal. Output: design tokens and hero draft.
3. Content Lead: Deliver first-pass narrative copy for all 6 sections. Output: section-by-section content file.
4. Frontend Engineer: Scaffold landing page repo and analytics event map. Output: initial codebase and tracking plan.

## 13. Out-of-Scope (v1)
- Multi-page booking engine
- Full CMS authoring suite
- Native mobile app
- Dynamic pricing engine

## 14. Acceptance Criteria
- Exactly 6 major sections implemented and reviewable.
- Brand direction clearly reflects editorial brutalist luxury posture.
- Primary CTA visible in hero and conversion footer.
- Mobile and desktop experiences both meet quality bar.
- Accessibility and performance baselines pass before release.
