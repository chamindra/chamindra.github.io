---
layout: post
title: "Open Source AI and the Future of Foundation Models"
date: 2026-06-22
categories: [ai]
tags: [ai, open source, llm, foundation models, governance, finos]
excerpt: "What does 'open source' truly mean when applied to large language models? Examining licensing, weights, training data, and governance through OSI principles — and what the movement must demand."
linkedin_url: "https://uk.linkedin.com/in/chamindra"
---

The open source movement has long operated on clear principles: access to source code, freedom to run and modify, and the right to redistribute. But as foundation models reshape the software landscape, these principles are being tested in ways their originators could not have anticipated.

## The licensing dilemma

When Meta releases Llama under restricted commercial terms, or Mistral ships weights under a non-OSI-compliant licence, are these truly "open source" models? The OSI's [Model Openness Framework](https://isitopen.ai) attempts to answer this definitively, requiring openness across training data, model architecture code, and weights. Few models today meet all three criteria simultaneously.

The tension is real. Fully open training data raises copyright and bias concerns. Open weights enable misuse at scale. And yet without openness, the concentration of AI capability in a handful of labs creates exactly the kind of power asymmetry that the open source movement was founded to resist.

## What the HFOSS community must demand

Those of us who built careers on the democratising power of FOSS — deploying Sahana to coordinate disaster relief, advocating for OLPC, championing government software built in the open — have a particular stake in this debate. The humanitarian stakes of AI are at least as high as any software we have deployed before.

Open source AI models should meet the same bar we set for any open source software:

- Training data must be documented, provenance-tracked, and where possible, open
- Model weights must be freely redistributable under an OSI-approved licence
- Fine-tuning and inference code must be open
- Governance of the model's development must be transparent, with public roadmaps and auditable decision records

## InnerSource as a bridge

For organisations that cannot yet contribute to fully open foundation models, InnerSource offers a critical bridge: applying open source culture — contribution norms, transparent roadmaps, meritocratic governance — within an enterprise boundary. This is the model I have been building at Citi, and it scales naturally to AI development teams who need deep internal collaboration without full public openness.

The FINOS InnerSource SIG has been mapping exactly these patterns for financial services, where regulatory constraints make full openness complex but internal AI collaboration is essential.

## The call to action

The next frontier is ensuring that the open source AI ecosystem does not calcify into a two-tier system: fully open models for academic research, and locked proprietary models for production use. We have seen that story before — proprietary vs open source in operating systems, databases, web infrastructure — and we know how it ends when the community stays organised and principled.

The open source community built the infrastructure the internet runs on. There is every reason to believe we can do the same for AI, if we insist on our principles now, before the defaults are set.
