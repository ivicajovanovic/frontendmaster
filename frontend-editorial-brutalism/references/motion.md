# Motion Reference

## Core Principle

Use motion as editorial pacing: reveal intent, not spectacle.

## Timing Profile

Use short interactions for utility and medium interactions for narrative:
- utility hover/focus: 120-180ms
- panel or card transitions: 240-360ms
- section reveal choreography: 400-700ms

## Easing Guidance

Use smooth easing with clean arrival.
Prefer curves that accelerate gently and decelerate with control.
Avoid elastic or bouncy curves for luxury contexts.

## Choreography

Reveal large elements first, detail elements second.
Stagger related items by 40-90ms.
Do not animate every element in a section.

## Trigger Rules

Trigger major reveals on viewport entry once.
Keep hover animations subtle and tactile.
Use parallax sparingly and keep displacement low.

## Accessibility

Respect `prefers-reduced-motion` by removing large transforms.
Fallback to opacity-only transitions where possible.