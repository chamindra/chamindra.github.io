---
layout: post
title: "Understanding Open Source Licenses — FOSS4Gov Sri Lanka"
date: 2009-09-22
categories: [open-source]
tags: [open source, licenses, government, foss4gov, sri lanka, policy, legal]
slideshare_url: https://www.slideshare.net/slideshow/foss4gov-understanding-open-source-licenses/5229539
excerpt: "A talk at the FOSS4Gov conference in Sri Lanka demystifying software licensing for government officials and policy makers — the key families, what they actually permit, and why the choice matters more than most organisations realise."
---

FOSS4Gov was a conference specifically aimed at government adoption of Free and Open Source Software in Sri Lanka. The audience was a mix of policy makers, civil servants, and IT managers — people who needed to make licensing decisions but didn't necessarily have a background in intellectual property law or open source community norms.

The talk I gave tried to bridge that gap: enough legal grounding to understand why licences exist and what they actually do, enough practical guidance to make sensible adoption decisions.

## Why licences matter more than people realise

The default assumption in government IT procurement is that software licensing is a legal formality — something the lawyers handle. In practice, the choice of licence determines:

- Whether the government can modify the software to meet local requirements
- Whether those modifications have to be shared back with the broader community
- Whether the software can be used alongside proprietary components
- Whether the government has any liability exposure from using the software
- Whether vendors can be contracted to support it without creating lock-in

Getting this wrong doesn't just create legal risk — it can undermine the entire rationale for adopting open source in the first place.

## The major licence families

The presentation covered three families of licences:

**Copyleft (GPL, AGPL).** The strongest form of open source protection — any derivative work must also be released under the same licence. GPL is the most widely used copyleft licence. AGPL closes the "SaaS loophole" by requiring source publication even when software is only accessed over a network. Governments that want to ensure modifications stay public should consider copyleft.

**Weak copyleft (LGPL, MPL).** Copyleft applies only to the licensed component itself, not to software that links to or uses it. Useful when you want open source at the library level but need to allow proprietary integration.

**Permissive (Apache, BSD, MIT).** No copyleft requirements — modifications can be kept proprietary. Maximum freedom for integrators and vendors. The Apache licence adds an explicit patent grant, which matters in enterprise contexts. Permissive licences are the easiest starting point for government adoption but offer fewer protections for public benefit.

## The government adoption argument

The underlying argument I made was that software built for and by citizens should be auditable and modifiable by citizens. Democratic principles — transparency, accountability, public participation — map directly onto open source governance. A government that builds its election management system on proprietary software it cannot inspect or modify has created a structural accountability gap.

This argument landed differently with different parts of the audience. The IT managers were primarily interested in cost and vendor lock-in. The policy makers were more interested in the sovereignty angle — the ability to modify and inspect systems that affect public life.

The full slide deck is on SlideShare and includes a compatibility matrix showing which licences can be combined without creating legal conflicts.
