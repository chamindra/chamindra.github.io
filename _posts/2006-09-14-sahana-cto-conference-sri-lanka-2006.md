---
layout: post
title: "Sahana Disaster Management System — CTO Conference Sri Lanka 2006"
date: 2006-09-14
categories: [hfoss]
tags: [sahana, hfoss, disaster management, open source, sri lanka, conference]
slideshare_url: https://www.slideshare.net/slideshow/sahana-cto-conference-presentation-in-2006/5229704
excerpt: "Two years after the Indian Ocean tsunami, I presented Sahana to the Sri Lankan CTO community — arguing that open source humanitarian software wasn't a temporary crisis response but a permanent infrastructure investment."
---

Two years after Sahana was first written in a ten-day sprint during the Indian Ocean tsunami response, I presented it to the CTO community in Sri Lanka. The framing had shifted. In 2004 we were asking: can we build something that works in the next 48 hours? By 2006 we were asking: how do we make this sustainable, and who should own it?

## What the audience needed to hear

The CTO audience was technically sophisticated but commercially oriented. They were interested in Sahana primarily as a case study in rapid open source development and secondarily as a question about institutional responsibility — if Sri Lanka needed this system, who was responsible for maintaining it?

The answers I gave:

**On the technical side.** Sahana's architecture by 2006 had matured into a proper plugin system. The original monolithic PHP codebase had been refactored into modules — missing persons registry, shelter registry, volunteer coordination, request and pledge management — each independently deployable. This made it possible to deploy only the relevant modules for a specific disaster type rather than the full system.

**On the sustainability side.** Open source without institutional backing is fragile. The Sahana community was international, but Sri Lanka had a particular responsibility as the country of origin. The argument I made was that governments that benefit from open source humanitarian software have an obligation to contribute back — not necessarily in code, but in hosting, localisation, and institutional endorsement.

**On the commercial opportunity.** For Sri Lankan technology companies, Sahana represented both a service opportunity (deployment, customisation, training, support) and a reputation asset (demonstrating Sri Lankan engineering capability in a globally deployed humanitarian system). The Gold Stevie and other international recognition that came later validated this.

## The open source humanitarian case

The broader argument I made to the CTO audience was that the choice between open and proprietary software in public-interest infrastructure is not primarily a cost question — it's a values question. Software built to respond to disasters that affect everyone should be auditable by anyone, modifiable by any agency, and free from the dependency on a single vendor's survival.

That argument was more abstract in 2006 than it sounds now. The open source movement was still proving itself in enterprise contexts; its application to humanitarian infrastructure was genuinely novel.

The slides from 2006 are preserved on SlideShare and show the system at a much earlier stage than any of my later presentations — a useful record of how the architecture and community thinking evolved over the following decade.
