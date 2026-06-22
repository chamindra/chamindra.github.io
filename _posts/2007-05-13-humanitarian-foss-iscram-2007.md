---
layout: post
title: "Humanitarian FOSS — A Case Study in Disaster Management, ISCRAM 2007"
date: 2007-05-13
categories: [hfoss]
tags: [sahana, hfoss, disaster management, open source, iscram, conference]
slideshare_url: https://www.slideshare.net/slideshow/iscram-2007-humanitarianfoss-case-disaster-management/5229768
excerpt: "At ISCRAM 2007 in Delft I made the case for Humanitarian FOSS as a distinct discipline — and used Sahana's first three years as the evidence that open source principles and humanitarian purpose are unusually well matched."
---

ISCRAM 2007 was held in Delft, Netherlands. I presented at a time when Sahana was three years old and had been through five major disaster deployments. The talk was one of the first attempts to formally define Humanitarian Free and Open Source Software as a category — to argue that humanitarian applications of open source aren't just open source with a good cause attached, but a genuinely distinct discipline with its own design constraints and community dynamics.

## The HFOSS argument

The core claim was this: when you build software for disaster response and humanitarian coordination, the standard open source motivations — career advancement, technical reputation, scratching a personal itch — are supplemented by something much stronger. People contribute to humanitarian software because the stakes are real and visible.

This changes the contributor pool and the community dynamics. It brings in people who would never contribute to a database abstraction layer or a build tool, but who will spend a weekend writing code they know will be used to find missing children after an earthquake. It also creates a different tolerance for unglamorous work — documentation, localisation, data entry UX — because people understand concretely why it matters.

## Sahana as the case study

By 2007, Sahana had been deployed in:
- **Sri Lanka (2004–2005)** — original deployment, Indian Ocean tsunami, missing persons and refugee tracking
- **Pakistan (2005)** — earthquake response, adapted for Urdu-speaking users and Islamic relief organisations
- **Philippines (2006)** — typhoon response, first deployment by a national government agency
- **Indonesia (2006)** — earthquake and tsunami, multi-agency coordination

Each deployment added evidence for the thesis. The community that had formed around Sahana was motivated in ways that commercial open source communities weren't — and it was resilient in ways that matched the environments it was designed to serve.

## Design constraints unique to humanitarian software

The ISCRAM audience was academic, so I spent time on the design principles that distinguish humanitarian software from commercial open source:

- **Degraded infrastructure is the baseline, not the edge case.** No reliable power, no reliable connectivity. The software must work on the worst day, not the best.
- **Users are non-technical volunteers under stress.** Training time is measured in minutes, not days. Every extra field on a form is a failure.
- **Interoperability is survival.** No single system will be used by all responding agencies. The system that can't share data is an island.
- **Deployment speed is a life-safety factor.** The difference between a 4-hour and a 12-hour deployment is measured in outcomes, not just convenience.

The talk framed these not as interesting research problems but as hard requirements — things that have to be true for the software to be worth deploying at all.

The slides are on SlideShare for anyone who wants the full argument and the Sahana architecture overview from 2007.
