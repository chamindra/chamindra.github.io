---
layout: post
title: "Sahana Open Source DMS — ISCRAM Asia 2014"
date: 2014-10-24
categories: [hfoss]
tags: [sahana, hfoss, disaster management, iscram, open source, conference]
slideshare_url: https://www.slideshare.net/slideshow/iscram-asia-2014-sahana-open-source-disaster-management-system-overview-and-history/36193865
excerpt: "At ISCRAM Asia 2014, I presented on what makes disaster management software a distinct design problem — and why the open source community model, combined with humanitarian motivation, produced something more resilient than either could alone."
---

The Information Systems for Crisis Response and Management (ISCRAM) Asia conference brought together practitioners, researchers, and technologists working on crisis informatics across the Asia-Pacific region. I presented on Sahana's architecture and history — but the framing I chose for this audience was about the community model as much as the technology.

## Why open source and humanitarian motivation reinforce each other

The question I get most often about Sahana is: how did a volunteer-built system get deployed in 25+ countries across more than 20 disasters? The answer is that open source and humanitarian purpose are unusually well matched.

In commercial open source, contributor motivation is often career-driven — building reputation, acquiring skills, demonstrating competence to future employers. These are legitimate motivations, but they're fragile when the work is unglamorous or when visibility is low.

In humanitarian open source, the motivation is purpose. When contributors know the software is being used to find missing persons after an earthquake, or to coordinate food distribution in a flood zone, the maintenance burden looks different. The community holds together under pressure in ways that purely commercial open source communities don't.

## Technical design for crisis scenarios

The ISCRAM audience was interested in the technical specifics, so I covered the design principles that emerged from Sahana's first decade:

- **Plugin architecture.** Each Sahana module — missing persons registry, shelter registry, organisation registry, request management — is a self-contained plugin. Deployments can enable only what they need, reducing complexity for responders and operators.
- **Low-bandwidth operation.** Many disaster deployments run on satellite connections or mobile data. The application was designed to function on 56k equivalent bandwidth, with progressive enhancement for better connectivity.
- **Offline capability.** Field teams often lose connectivity entirely. The system supports local offline operation with sync when reconnected.
- **Multi-lingual by design.** Deployments in Sri Lanka, Pakistan, the Philippines, China, and Haiti required localisation as a first-class feature, not an afterthought.

## The interoperability challenge

One of the most consistent challenges in disaster response is that every agency arrives with its own system. Red Cross, UNHCR, national civil defence, military units — all using different tools with no shared data layer. Sahana addressed this by implementing CAP (Common Alerting Protocol) and EDXL (Emergency Data Exchange Language) support, enabling data sharing with systems that wouldn't otherwise talk to each other.

The slides on SlideShare walk through the deployment history and architecture in more detail.
