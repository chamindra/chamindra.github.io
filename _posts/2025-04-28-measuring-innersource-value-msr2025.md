---
layout: post
title: "Measuring InnerSource Value: A Framework for Financial Services"
date: 2025-04-28 00:00:00 +0000
categories: [innersource]
tags: [featured, innersource, metrics, finos, open source, fintech]
excerpt: "At the InnerSource Commons Summit I co-presented a framework for quantifying the business impact of InnerSource — covering cost savings from reuse, time-to-market gains, maintenance reduction, and engineering health — with Daniel Izquierdo-Cortazar of Bitergia."
linkedin_url: https://uk.linkedin.com/in/chamindra
external_url: https://www.youtube.com/watch?v=QlVA9bvnbyM
external_label: watch recording
---

I co-presented *Measuring InnerSource Value* at the InnerSource Commons Summit alongside [Daniel Izquierdo-Cortazar](https://bitergia.com/) of Bitergia. Daniel also took this work to the [MSR 2025 Industry Track](https://2025.msrconf.org/details/msr-2025-industry-track/2/Measuring-InnerSource-Value) in Ottawa — the Mining Software Repositories conference — which gave the framework exposure in the empirical software engineering research community.

The talk sets out to answer one of the questions I am most frequently asked when advocating for InnerSource inside a regulated financial institution: **how do you actually prove it is worth it?**

The honest answer, for most organisations, is that they cannot — not yet. They have intuitions and anecdotes. They know that reusing a shared library saved a team weeks of work, or that a cross-team contribution improved a platform that five squads depend on. But they lack the consistent measurement infrastructure to turn those observations into numbers that a CFO or CRO will act on.

That is the gap this framework is designed to close.

## Four Dimensions of InnerSource Value

The framework defines four key areas where InnerSource generates measurable business value:

**1. Cost savings through code reuse.** When an engineering team consumes an InnerSource component rather than building equivalent functionality from scratch, the cost delta is real and quantifiable. Automated tooling — dependency graph analysis, contribution telemetry — captures this at scale across the breadth of an organisation's inner ecosystem.

**2. Time-to-market improvement.** InnerSource accelerates delivery by reducing the duplication of effort. Teams that contribute to shared platforms rather than maintaining private forks converge on faster release cycles. This is tracked through lead time metrics aligned with DORA, adjusted for the cross-team contribution patterns specific to InnerSource.

**3. Maintenance cost reduction.** Fragmentation is expensive. Every private fork is a support burden; every undiscoverable internal library that gets rebuilt is waste. InnerSource, when properly instrumented, collapses that fragmentation and reduces the long-tail maintenance cost that accumulates invisibly across engineering organisations.

**4. Engineering health.** The dimension hardest to capture in a spreadsheet but perhaps most important for talent retention and platform quality: the degree to which InnerSource practices — open contribution norms, public roadmaps, meritocratic governance — improve how engineers experience their work. Survey instruments calibrated against contribution activity data give this dimension the rigour it deserves.

## The Measurement Infrastructure

Across all four dimensions, we combine three measurement modalities: **automated tools** that extract signals from version control, dependency management, and CI/CD systems; **structured surveys** that capture what tooling cannot see; and **analytical models** that translate raw signals into business-relevant numbers.

The goal is not a metrics dashboard for its own sake. It is to produce actionable insights that engineering and business leaders can use to decide where to invest in InnerSource infrastructure, which components warrant the governance overhead of formal InnerSource programmes, and how to communicate ROI to stakeholders who are not close to the engineering culture.

## From White Paper to Conference

This presentation builds directly on the [FINOS InnerSource Value Metrics White Paper](https://www.finos.org/innersource-value-metrics-white-paper) that I co-produced through the FINOS InnerSource Special Interest Group — a cross-institutional effort drawing on practitioners from financial services firms navigating the same measurement challenges.

The [recording is available on YouTube](https://www.youtube.com/watch?v=QlVA9bvnbyM).
