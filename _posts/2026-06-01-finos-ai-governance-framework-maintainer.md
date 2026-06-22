---
layout: post
title: "Governing AI in Financial Services: Inside the FINOS AI Governance Framework"
date: 2026-06-01 00:00:00 +0000
categories: [ai]
excerpt: "As a maintainer of the FINOS AI Governance Framework, I've been working alongside peers from Citi, Morgan Stanley, NatWest, and Scott Logic to build practical governance processes for deploying AI safely inside financial institutions — threat modelling, risk characterisation, and regulatory alignment baked in from day one."
linkedin_url: https://uk.linkedin.com/in/chamindra
external_url: https://github.com/finos/ai-governance-framework
external_label: github
---

Financial services organisations are under simultaneous pressure to deploy generative AI rapidly and to prove to regulators, auditors, and risk committees that they are doing so responsibly. Most existing technology onboarding processes were not designed for the peculiarities of foundation models: opaque training data, stochastic outputs, emergent capabilities, and third-party model dependencies that span continents and jurisdictions.

The [FINOS AI Governance Framework](https://github.com/finos/ai-governance-framework) (AIGF) is an open-source, community-built response to this gap. I joined the project as a maintainer alongside colleagues from Scott Logic, ControlPlane, Morgan Stanley, and NatWest — bringing a practitioner lens shaped by my work as DevOps Product Owner and InnerSource Lead at Citi UK.

## What the Framework Actually Does

The AIGF is not a set of principles printed on a poster. It is an *operational* framework: a use-case-driven methodology that characterises risk based on system architecture, applies structured threat modelling to identify failure modes, and maps those threats to concrete mitigations and controls. The output is something a risk manager, a developer, and a regulator can all read and act on.

The framework is deliberately scoped. Rather than attempting to govern all of AI simultaneously, it picks specific use cases — code generation, document summarisation, RAG-based search, agentic workflows — and works through each one systematically. This makes it tractable and keeps the outputs tied to real deployment decisions rather than abstract policy.

## Why Open Source Governance Matters Here

The instinct in financial services is to build proprietary governance frameworks in isolation. Every institution invents its own risk taxonomy, its own approval checklist, its own model inventory schema. The result is enormous duplication of effort, inconsistency across the industry, and a race to the regulatory minimum rather than to actual safety.

Open-sourcing this work under a Creative Commons licence means that the best thinking from across the industry compounds rather than siloes. A mitigation pattern proven at one bank can be reviewed, stress-tested, and adopted by others. Regulators benefit from seeing a common vocabulary emerge. Practitioners benefit from not having to build from scratch.

This is exactly the InnerSource argument applied at industry scale — and it is why FINOS is the right home for the project.

## My Contributions

My focus within the AIGF has been threefold:

**Regulatory alignment.** Financial services AI governance does not exist in a vacuum. SR 11-7 model risk management guidance, SR 26-2 on AI/ML systems, the EU AI Act, and DORA all impose overlapping obligations. I have been working to ensure the AIGF's use-case taxonomy includes the metadata needed to answer the practical question every bank must answer: does this system require full Model Risk Management treatment, and if so, at what validation tier?

**ROI and adoption.** A governance framework that nobody deploys is worthless. I have been developing a structured ROI model that translates AIGF adoption into measurable business value — reduced time-to-approval for lower-risk use cases, lower incident remediation costs, improved auditability — so that CTO offices and AI leadership can make the case internally.

**Agentic tooling.** I have been advocating for an AIGF MCP server that allows institutions to use agent-assisted workflows to generate a *customised* governance framework — one that respects their existing risk infrastructure rather than overwriting it. More on this in a separate post.

## The Broader Picture

The AIGF sits at the intersection of three things I have spent my career on: open source community governance, enterprise-scale risk management, and the ethics of technology deployment. The question of how we govern AI is not primarily a technical question. It is a question about values, accountability, and who bears the cost when things go wrong.

Getting this right matters — for the institutions deploying AI, for the customers whose data and decisions are affected, and for the broader project of ensuring that AI development remains accountable to human judgment.

The framework is incubating at FINOS and actively welcoming contributors. If you work in financial services AI, risk, or compliance — or if you care about open governance of AI systems — I would encourage you to engage.
