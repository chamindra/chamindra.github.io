---
layout: post
title: "Measuring InnerSource Value: A Framework for Financial Services"
date: 2025-04-28 00:00:00 +0000
categories: [innersource]
tags: [featured, innersource, metrics, finos, open source, fintech]
excerpt: "At MSR 2025 in Ottawa I presented a framework for quantifying the business impact of InnerSource — covering cost savings from reuse, time-to-market gains, maintenance reduction, and engineering health — co-authored with Daniel Izquierdo-Cortazar of Bitergia."
linkedin_url: https://uk.linkedin.com/in/chamindra
external_url: https://www.youtube.com/watch?v=QlVA9bvnbyM
external_label: watch recording
---

At [MSR 2025](https://2025.msrconf.org/details/msr-2025-industry-track/2/Measuring-InnerSource-Value) — the Mining Software Repositories conference held in Ottawa — I had the privilege of presenting in the Industry Track alongside [Daniel Izquierdo-Cortazar](https://bitergia.com/) of Bitergia. Our talk, *Measuring InnerSource Value*, set out to answer one of the questions I am most frequently asked when advocating for InnerSource inside a regulated financial institution: **how do you actually prove it is worth it?**

The honest answer, for most organisations, is that they cannot — not yet. They have intuitions and anecdotes. They know that reusing a shared library saved a team weeks of work, or that a cross-team contribution improved a platform that five squads depend on. But they lack the consistent measurement infrastructure to turn those observations into numbers that a CFO or CRO will act on.

That is the gap this framework is designed to close.

## Four Dimensions of InnerSource Value

The framework I presented with Daniel defines four key areas where InnerSource generates measurable business value:

**1. Cost savings through code reuse.** When an engineering team consumes an InnerSource component rather than building equivalent functionality from scratch, the cost delta is real and quantifiable. We propose automated tooling — dependency graph analysis, contribution telemetry — to capture this at scale, across the breadth of an organisation's inner ecosystem.

**2. Time-to-market improvement.** InnerSource accelerates delivery by reducing the duplication of effort. Teams that contribute to shared platforms rather than maintaining private forks converge on faster release cycles. We track this through lead time metrics aligned with DORA, adjusted for the cross-team contribution patterns specific to InnerSource.

**3. Maintenance cost reduction.** Fragmentation is expensive. Every private fork is a support burden; every undiscoverable internal library that gets rebuilt is waste. InnerSource, when properly instrumented, collapses that fragmentation and reduces the long-tail maintenance cost that accumulates invisibly across engineering organisations.

**4. Engineering health.** This is the dimension hardest to capture in a spreadsheet but perhaps most important for talent retention and platform quality: the degree to which InnerSource practices — open contribution norms, public roadmaps, meritocratic governance — improve how engineers experience their work. We use survey instruments calibrated against contribution activity data to give this dimension the rigour it deserves.

## The Measurement Infrastructure

Across all four dimensions, we combine three measurement modalities: **automated tools** that extract signals from version control, dependency management, and CI/CD systems; **structured surveys** that capture what tooling cannot see; and **analytical models** that translate raw signals into business-relevant numbers.

The goal is not just to generate a metrics dashboard. It is to produce actionable insights that engineering and business leaders can use to decide where to invest in InnerSource infrastructure, which components warrant the governance overhead of formal InnerSource programmes, and how to communicate ROI to stakeholders who are not close to the engineering culture.

## From White Paper to Conference

This presentation builds directly on the [FINOS InnerSource Value Metrics White Paper](https://www.finos.org/innersource-value-metrics-white-paper) that I co-produced through the FINOS InnerSource Special Interest Group — a cross-institutional effort drawing on practitioners from financial services firms navigating the same measurement challenges.

Taking this work to MSR 2025 — a rigorous academic venue for empirical software engineering research — felt important. InnerSource has matured well beyond its origins as an internal engineering culture movement. It is now a practice that deserves the same measurement discipline we apply to any other strategic investment in software capability.

The [recording is available on YouTube](https://www.youtube.com/watch?v=QlVA9bvnbyM).
