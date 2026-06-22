---
layout: post
title: "InnerSource Patterns from the Citi DevOps Experience"
date: 2026-06-22
categories: [innersource]
tags: [innersource, devops, citi, finos, enterprise, banking, open source]
excerpt: "Lessons from leading InnerSource inside one of the world's largest banks — discovery, contribution norms, trusted committer model, and making it culturally permanent."
linkedin_url: "https://uk.linkedin.com/in/chamindra"
---

InnerSource — the application of open source principles inside an enterprise — sounds straightforward until you try it inside a 200,000-person global bank with decades of accumulated silo culture.

## Why banks need InnerSource

Financial institutions accumulate duplicate code at a rate that would horrify any open source contributor. Payment libraries rebuilt across twelve teams. Authentication utilities copied and diverged. Risk calculation engines that started as one shared codebase and became twenty. The engineering cost is significant; the compliance risk of inconsistent implementations in regulated code is greater still.

The root cause is incentive misalignment. Teams are measured on delivery velocity to their own roadmap, not on contributions to shared infrastructure. InnerSource reframes the problem: shared code is not a distraction from delivery, it *is* delivery, at a multiplied scale.

## What we built at Citi

As DevOps Product Owner and InnerSource Lead, the programme centred on four interconnected interventions:

**Discovery first.** Before contribution norms matter, teams must be able to *find* reusable code. We invested in an internal catalogue — essentially an inner-npm registry with search, ownership metadata, test coverage signals, and deprecation notices. Without discoverability, InnerSource is invisible and therefore unused.

**Trusted Committer model.** Borrowed directly from [FINOS InnerSource SIG patterns](https://github.com/finos/InnerSource), the Trusted Committer role made explicit who could approve contributions to a shared component. This single change resolved the "who do I talk to?" friction that kills contributor momentum on shared codebases.

**Lightweight contribution agreements.** `CONTRIBUTING.md` files in inner repositories set expectations without creating bureaucracy. The goal is to make contributing feel as natural as raising a PR on GitHub — same tooling, same vocabulary, same meritocratic norms.

**Public recognition of contributions.** Quarterly InnerSource awards, mentions in engineering all-hands, and visible attribution in release notes shifted the cultural signal. Contributing to shared infrastructure became a career-positive activity, not an optional side-project.

## What the FINOS InnerSource SIG brings

As FINOS InnerSource SIG Lead, I have had the privilege of seeing these patterns validated across multiple financial institutions. The sector's shared regulatory environment makes InnerSource particularly powerful: banks compete on product and service, not on their authentication library or their CI/CD pipeline.

The SIG's [pattern library](https://github.com/finos/InnerSource) is a living document of what works across the industry. I would encourage any engineering leader in financial services to engage — the collective intelligence of the community is far more valuable than any single institution's experience alone.

## The connection to open source AI

InnerSource is not just about sharing Java libraries. As financial institutions begin building and fine-tuning foundation models internally, the same patterns apply: shared model registries, Trusted Committer governance for model updates, contribution norms for dataset curation. The InnerSource community is already working on these patterns, and the open source AI governance debate will benefit from what we have learned inside regulated enterprises.
