---
layout: post
title: "Sahana Open Source Disaster Management System — AAAI Spring Symposium, Stanford"
date: 2015-03-27
categories: [hfoss]
tags: [sahana, hfoss, disaster management, aaai, stanford, ai, open source, conference]
slideshare_url: https://www.slideshare.net/slideshow/sahana-overview-and-history-of-sahanaaaai-2015/46384191
excerpt: "A talk at the AAAI Spring Symposium at Stanford tracing Sahana's evolution from the 2004 tsunami through twenty-plus deployments across 25 countries — and what humanitarian software design demands that commercial open source does not."
---

I presented at the AAAI Spring Symposium at Stanford in March 2015, in a session on AI and crisis informatics. The invitation came from the intersection of Sahana's history with early machine learning in disaster response — though the talk itself focused on the human and community dimensions rather than the AI angle.

The core of the presentation was an arc: how a system built in ten days during the 2004 Indian Ocean tsunami response became a platform deployed in over 25 countries across more than 20 disaster events.

## Three phases of Sahana's evolution

**Phase one — emergency response (2004–2006).** The original Sahana was written in PHP during the tsunami aftermath, running on hardware donated by local ISPs in Colombo. The design decisions made under that pressure — simple data entry, low-bandwidth operation, offline-capable modules — turned out to be the right ones for disaster scenarios, even though they were made by necessity rather than foresight.

**Phase two — platform rebuild (2006–2009).** As deployments multiplied — Pakistan earthquake, Philippines typhoons, China earthquake — the codebase needed a ground-up refactor. This phase produced the modular plugin architecture that made Sahana adaptable to different disaster types and organisational contexts without core modifications.

**Phase three — foundation and governance (2009–present).** The Sahana Software Foundation was established as a US 501(c)(3) nonprofit, separating the governance of the software from any single organisation. This enabled sustainable long-term development and created clear channels for government partnerships and institutional adoption.

## What humanitarian software demands

The AAAI audience was technically sophisticated, so I spent time on the design constraints that make humanitarian software a distinct discipline:

- **Operate under degraded infrastructure.** No assumptions about reliable power, connectivity, or hardware. Every module must degrade gracefully.
- **Usable by non-technical volunteers in minutes.** The users in an emergency are often not IT professionals — they're volunteers who need to be productive within the first hour of a deployment.
- **Interoperate with proprietary emergency systems.** Governments and international agencies use closed systems. Sahana had to speak their protocols (CAP, EDXL) even when it couldn't replace them.
- **Community-driven motivation.** Open source contributor motivation in humanitarian projects comes from purpose, not career advancement. The governance model has to honour that.

The full slide deck is on SlideShare and covers the deployment history, technical architecture, and community governance in more depth.
