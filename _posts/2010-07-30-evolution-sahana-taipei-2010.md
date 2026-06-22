---
layout: post
title: "The Evolution of the Sahana System, Community and Standards — Taipei 2010"
date: 2010-07-30
categories: [hfoss]
tags: [sahana, hfoss, disaster management, open source, open standards, interop, conference]
slideshare_url: https://www.slideshare.net/slideshow/the-evolution-of-the-sahana-system-community-and-standards-taiwan-2010/5185321
excerpt: "At the Sahana Conference in Taipei I traced six years of evolution — from an emergency system built in ten days to a globally deployed platform — and argued that technical standards for emergency interoperability were the next critical frontier."
---

The Sahana Conference in Taipei in July 2010 brought together the global Sahana community at a moment of genuine inflection. The Haiti earthquake response earlier that year had been Sahana's largest and most complex deployment — fifteen parallel deployments by different organisations, the first time the system had been tested at that scale simultaneously. It had held, mostly, but the gaps were visible.

I used the Taipei talk to take stock of where we were and what the next phase needed to be.

## Six years of evolution

**The origin (2004).** Sahana started as a missing persons registry written by Sri Lankan developers in the days after the Indian Ocean tsunami. The first version was a ten-day sprint, running on donated hardware in a Colombo data centre. The design wasn't elegant — it wasn't meant to be. It was meant to work.

**First deployments (2005–2007).** The Pakistan earthquake in 2005 was the first international deployment. Then the Philippines, then Indonesia. Each deployment added pressure to generalise the system — what worked for Sri Lanka didn't always work for the Philippines. The plugin architecture evolved from this pressure.

**The China earthquake (2008).** The Sichuan earthquake was the first deployment where an international open source community coordinated a response in real time across language and timezone barriers. Chinese developers, international volunteers, and Sahana Foundation members worked simultaneously to localise and deploy within 72 hours. The CACM article I co-authored documented that experience.

**Haiti (2010).** Haiti was a step-change in complexity. Multiple UN agencies, NGOs, and national civil defence teams each deployed their own Sahana instance. The coordination overhead was significant, and the gaps in interoperability between instances were exposed clearly.

## The standards argument

By 2010, the most important technical problem facing emergency information systems was not functionality — it was interoperability. Agencies arrive at a disaster with incompatible systems, incompatible data models, and incompatible communications protocols. No amount of feature development in Sahana alone would solve that.

The argument I made in Taipei was that the community needed to invest in standards work — specifically CAP (Common Alerting Protocol) and EDXL (Emergency Data Exchange Language) — not just as import/export formats but as the primary data model. Systems that speak a shared language can share data without bilateral integration work.

This was also the talk where I first articulated the distinction between crisis coordination tools (what Sahana was) and crisis communication tools (what mobile and social platforms were becoming). The two needed to work together rather than compete.

## Governance transition

The talk also covered the establishment of the Sahana Software Foundation as a US 501(c)(3) nonprofit, which had happened in 2009. Moving from a project to a foundation changed the sustainability model: dedicated staff, institutional donors, and a clear governance structure that was independent of any single company or university.

The full slide deck covers the deployment timeline, architecture evolution, and standards roadmap in detail.
