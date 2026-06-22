---
layout: post
title: "The AIGF MCP Server: Agent-Assisted AI Governance at Scale"
date: 2026-04-08 00:00:00 +0000
categories: [ai]
excerpt: "Most financial institutions already have governance frameworks — partly built, idiosyncratically structured, and deeply embedded in existing risk processes. An MCP server for the FINOS AI Governance Framework can use agentic workflows to generate a customised governance framework that respects what's already there rather than overwriting it."
linkedin_url: https://uk.linkedin.com/in/chamindra
external_url: https://github.com/finos/ai-governance-framework/issues/286
external_label: github issue
---

There is a structural problem with any open-source governance framework that targets large financial institutions: the institutions it is designed to help have already started.

Every major bank has a Model Risk Management function, a Technology Risk team, an AI Centre of Excellence, and at least one half-finished AI governance initiative of their own. They have existing risk taxonomies, approval workflows, and vendor assessment questionnaires that took years and significant internal capital to build. Asking them to replace all of this with a new open-source framework is not adoption — it is replacement. And replacement almost never happens.

This is why I proposed an [MCP server for the FINOS AI Governance Framework](https://github.com/finos/ai-governance-framework/issues/286) — an agent-assisted approach that generates a *customised* governance framework by combining AIGF's deterministic building blocks with an institution's existing governance components.

## What an AIGF MCP Server Does

Model Context Protocol (MCP) is an open standard for connecting AI systems to external tools and data sources. An AIGF MCP server exposes the framework's content — its use-case taxonomy, threat models, risk characterisation methodology, control mappings, and regulatory crosswalks — as structured, queryable resources that an AI agent can reason over.

With an MCP server in place, an institution's governance team can run an agent-assisted workflow that:

1. Ingests their existing governance artefacts — risk policies, approval templates, model inventory schemas, vendor assessment criteria
2. Queries the AIGF's building blocks against those artefacts, identifying where they align, where they complement, and where there are genuine gaps
3. Generates a customised reference framework that incorporates AIGF's community-validated components while preserving the institution's existing structures

The output is not a generic copy of the AIGF. It is a bespoke document — ready for human review and adaptation — that shows exactly which AIGF controls the institution is already meeting, which it needs to add, and which it may reasonably defer given its risk profile and regulatory context.

## Human Review as a Non-Negotiable

The proposal is explicit that human review is required before any recommendations are acted upon. This is not a disclaimer — it is architecturally important. AI governance frameworks deal with consequential decisions: which systems require independent validation, which AI outputs can be acted on autonomously, which third-party models are permissible. These decisions carry regulatory and reputational weight. The agent's output is a first draft and a structured prompt for human judgment, not a substitute for it.

This mirrors the governance principle I have been advocating within the AIGF more broadly: AI systems in high-stakes domains should be designed with *human on the loop*, not *human out of the loop*. The MCP server workflow is itself an instance of the governance model it helps produce.

## The Deeper Point

The MCP server proposal is, at its core, an argument about how open-source governance tooling should relate to enterprise adoption. The alternative to customisation is compliance theatre: institutions nominally adopting a framework while quietly ignoring the parts that conflict with their existing processes. Customisation — done transparently, with audit trail — produces genuine adoption and genuine improvement in governance quality.

It also demonstrates something I find compelling about the current moment in AI tooling: the best use of AI agents is not to replace human expertise but to make expert knowledge more accessible. The AIGF represents hundreds of hours of cross-institutional expertise on AI risk in financial services. An MCP server makes that expertise queryable and actionable for practitioners who need it — at the speed their deployment timelines demand.

This is the direction I want to see open-source AI governance move: not documents that sit in repositories, but living frameworks that integrate into the places where governance decisions are actually made.
