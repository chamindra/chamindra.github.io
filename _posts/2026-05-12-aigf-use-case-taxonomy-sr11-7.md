---
layout: post
title: "Classifying AI Use-Cases Under SR 11-7: A Governance Taxonomy for Financial Services"
date: 2026-05-12 00:00:00 +0000
categories: [ai]
excerpt: "Not every AI system in a bank requires full Model Risk Management treatment under SR 11-7. The challenge is knowing which ones do — quickly, consistently, and in a way regulators will accept. I've been developing a use-case taxonomy for the FINOS AI Governance Framework that answers precisely this question."
linkedin_url: https://uk.linkedin.com/in/chamindra
external_url: https://github.com/finos/ai-governance-framework/issues/305
external_label: github issue
---

One of the most practically consequential questions in financial services AI governance is deceptively simple: does this AI system require Model Risk Management (MRM) treatment under SR 11-7?

Get the answer wrong in one direction and you smother low-risk productivity tools under years of validation burden. Get it wrong in the other direction and a material AI system influencing credit decisions or market risk estimates slips through without the independent review the Federal Reserve expects. Neither outcome is acceptable — and yet, without a structured classification approach, most institutions are making this call case-by-case, inconsistently, under time pressure.

I have been working within the [FINOS AI Governance Framework](https://github.com/finos/ai-governance-framework) to address this with a use-case taxonomy that includes the metadata fields needed to make this determination systematically.

## The Problem with SR 11-7 as Written

SR 11-7 was published in 2011, when "model" meant a statistical model: a quantitative method with inputs, outputs, and a mathematical relationship that could be validated by a qualified independent party. It was written for VaR models, credit scorecards, and CCAR stress testing — not for large language models, RAG pipelines, or agentic systems that generate free-text outputs from opaque embeddings.

SR 26-2, issued more recently, begins to update this picture, extending model risk management expectations explicitly to AI and ML systems. But it does not resolve the threshold question: which AI use cases are "models" for SR 11-7 purposes, and which are tools?

The answer depends on how a system influences decisions — and on how material those decisions are.

## The Taxonomy Approach

Rather than attempting to define "model" more precisely in the abstract, the AIGF use-case taxonomy classifies each use case along four axes:

**SR 11-7 Applicability** — *Not Applicable / Limited / Moderate / High.* This captures the degree to which the system's outputs directly influence quantitative analysis, risk assessment, or regulatory reporting. A code generation assistant is typically Not Applicable. A system that produces risk summaries used in credit committee decisions is Moderate or High.

**Decision Influence Mode** — *Informational Only / Human In The Loop / Human On The Loop / Autonomous.* This reflects how much human oversight stands between the AI's output and a consequential action. Autonomous systems — where AI initiates actions without pre-approval — carry the highest governance burden regardless of their stated purpose.

**Materiality Tier** — *Low / Moderate / High / Critical.* This captures the potential financial, reputational, or regulatory impact if the system fails or produces systematically biased outputs.

**Validation Tier** — *Basic / Standard / Enhanced / Full MRM.* This is the output: the level of independent validation and ongoing monitoring the system requires, derived from the three inputs above.

## Why This Matters for Deployment Speed

The paradox of good governance in AI is that *not having it* is usually slower than having it. Without a taxonomy like this, every new AI use case goes to a risk committee that must invent its assessment from scratch. With it, lower-risk use cases (code assistants, internal search, document summarisation without decision influence) can be approved quickly against a pre-agreed standard — freeing governance capacity for the high-Materiality, Autonomous systems that genuinely need Full MRM treatment.

This is the argument I have been making in the context of the AIGF's ROI model as well: structured governance is not the enemy of AI adoption. It is the precondition for sustainable adoption at scale.

## Next Steps

The classification metadata is currently being developed as a proposal within the FINOS AIGF community. The next step is crosswalking it against the use cases already documented in the framework to validate that the taxonomy produces consistent, defensible outputs — and then socialising it with regulatory contacts and peer institutions through the FINOS community process.

If you have views on SR 11-7 applicability thresholds, or experience applying MRM governance to generative AI systems in practice, I would welcome the conversation.
