---
name: california-counts
description: Draft California Counts data journalism posts for the Pioneering Spirit blog. This skill captures the voice, format, structure, and editorial conventions of the California Counts series — data-driven posts about California state government, budgets, and fiscal or regulatory patterns. Trigger when the user mentions Open FI$Cal, wants to write a data journalism post about California government departments, budgets, or fiscal patterns, or asks for a California Counts installment. Also trigger on phrases like "California Counts," "fiscal transparency post," or "let's write a Counts post." Do NOT use for general Pioneering Spirit personal essays (use the pioneering-spirit-blog skill) or CV Weekly local news columns (use the cv-weekly-writing skill).
---

# California Counts Skill

California Counts is a data journalism series on the PioneeringSpirit.xyz blog that analyzes California state spending through Open FI$Cal data. Posts sit at the intersection of civic accountability journalism and Patrick Atwater's essayistic voice: objective and nonpartisan in tone, data-driven in substance, readable and clear in prose.

The series tagline: "Poking around Open FI$Cal so you don't have to."

## Before Writing Anything

Read `references/series-context.md` for the established series conventions, framing language, and how existing installments inherit on reader expectations. These posts are a recognizable series with cumulative credibility — each new installment inherits and builds on that.

## What Makes This Series Distinct

California Counts posts are Pioneering Spirit personal essays with data inserted. They are data-first. The numbers lead. The prose exists to interpret and contextualize the data, not to use data as occasional illustration of a nonquantitative argument.

Key distinctions from standard Pioneering Spirit essays:

- **Objective nonpartisan tone.** This series presents what the data shows, names tensions clearly, and offers multiple interpretive frames without tilting toward a partisan conclusion. The pattern revealed by the numbers is the point.
- **Lead paragraph (no header):** 2-4 sentences. Sets the scene. Introduces the department or topic with enough context for a reader who doesn't know state government. Ends with a pivot sentence that signals what the data shows.
- **Named numbers, not general claims.** Specific dollar amounts to one decimal place (e.g., $19.6 million). Percentages stated plainly (e.g., a 31% increase). Ratios when revealing (e.g., "96 to 1"). NOT "significant" or "substantial."
- **Caveats section is standard.** Every installment should include a "What the Data Doesn't Show" or equivalent section acknowledging Open FI$Cal's limitations: it's unaudited, it's accounting-level not operational, it shows inputs not outputs. This is not throat-clearing — it's intellectual honesty that earns the reader's trust.
- **Civic infrastructure argument.** Many installments should include a brief gesture toward the value of Open FI$Cal itself as civic infrastructure. The series exists partly to demonstrate that public financial data is usable for accountability.

## Post Architecture

### Standard Post

**Title:** Descriptive and direct. Often a question or a finding. Example: "What the Governor's Checkbook Tells Us." Avoid clickbait.

**Series framing (H1 + subtitle):** The H1 is the post title. The subtitle (H2 immediately below) is wry and self-aware. Examples: "Poking around Open FI$Cal so you don't have to." "What a decade of GovOps spending data reveals about who actually runs state government."

**Lead paragraph (no header):** 2-4 sentences. Sets the scene. Introduces the department or topic with enough context for a reader who doesn't know state government. Ends with a pivot sentence that signals what the data shows. The prose should be direct and rooted in first-person observation of the data.

**The topline finding (first H2 section):** The headline number. Total spending growth, the key ratio, the main shape of the curve. One chart. 2-4 paragraphs. This is the section a reader will share as a pull quote.

**Middle sections (3-5 H2 sections):** Each section introduces a new dimension of the data: a spending category breakdown, a personnel vs. consulting split, a specific anomaly in the trend, a comparison to another period or entity. Each section should have at least one chart and 2-5 paragraphs of interpretation. The sections should build on each other logically: broader findings first, then sharper focus.

**The interpretive tension section:** Every California Counts post has a section that names the central tension or paradox the data reveals. Not a partisan critique, but a genuine structural observation. Example: "The office that exists to make state government more capable relies on external contractors for nearly half its work." This section may present multiple interpretive frames, usually "the critical read" and "the more generous read." Both should be honest.

**What the Data Doesn't Show:** A brief section (3-6 sentences) that names Open FI$Cal's limitations. Unaudited data. Accounting-level not operational-level transparency. Inputs visible, outputs not. This section should be curt and clear, not defensive or apologetic. It's a known boundary.

**Closing paragraph (no header):** 2-4 sentences. Brings the analysis to a close with an observation that connects the specific finding to a broader question about California governance capacity. Does not wrap up too neatly. Often ends with an image, a question, or a quiet challenge.

**Data source footnote:** Standardized format (see below).

## Voice Rules for California Counts

These layer on top of the Pioneering Spirit base voice rules. Both sets apply.

### What's the same as Pioneering Spirit

- No em dashes (hard rule)
- Short to medium paragraphs (2-5 sentences)
- Mix of short declaratives and longer clause-rich sentences
- No cliches, no AI-essay-style phrases
- Precise vocabulary
- Wry, dry humor is acceptable but more restrained than in personal essays

### What's different in California Counts

- **First person is restrained.** The narrative voice is more analytical than memoir-like. First person appears but primarily in framing (e.g., "I've been spending evenings poking around...") and in meta-commentary about the data's limits. Not in extended personal anecdotes. The data is the protagonist.
- **Named facts as anchors.** Every interpretive claim should be anchored to a specific data point. "The office spent $8 million" not "The office spent a lot." No "significant increases" without a number. No "multiple frames without false balance." When presenting interpretive tensions, both frames should be substantive. Don't construct a straw man "critical read" just to knock it down.
- **No bullet points in the body.** Even when listing categories, render them as prose, or a table, not bullets.
- **Tables are acceptable.** Unlike the standard essay, data tables are welcome when they summarize multiple categories. Keep them clean.

## Chart Conventions

### Chart types by use case

- **Total spending over time:** Bar chart, one bar per fiscal year
- **Category breakdown:** Stacked bar or grouped bar, fiscal year on x-axis
- **Personnel vs. consulting:** Grouped bar or line, fiscal year on x-axis
- **Composition change:** Line chart showing ratios over time
- **Single category trend:** Line chart

### Chart titles

Short and descriptive. Capitalize nouns. Example: "Governor's Office Total Spending, FY19-FY24"

### Chart file naming convention

`{department_slug}_{chart_description}.png`

Examples: `govops_total_spending.png`, `governors_office_personnel.png`

### In-text chart references

Reference charts inline in the prose, immediately before or after the relevant claim. Format:

`![Chart Title](images/filename.png)`

The prose should interpret the chart, not just label it. "The line goes vertical" is better than "the chart shows an increase."

## Standard Data Source Footnote

At the end of every post, include:

`*Data source: [Open FI$Cal](https://open.fiscal.ca.gov/), California's financial transparency portal. Department [XXXX], [Department Name], FY[XX] through FY[XX]. Analysis performed in Python. All figures are unaudited expenditure data.*`

If this is not the first installment, add the series context line:

`*This is the [Nth] installment of California Counts, a data journalism series exploring California state spending using Open FI$Cal data. Previous posts examined [prior topics]. All data and analysis available on request.*`

## Series Tags

Standard tags for every post: `spending`, `open-fiscal`, `data-journalism`, `department-[XXXX]`

Plus one topical tag: `governors-office`, `govops`, `ccjbh`, `calhrm`, `calveterans`, etc.

## Workflow: How to Use This Skill

### Entry Point 1: User has Python analysis, wants to write the post

The user has already pulled Open FI$Cal data, produced charts, and has summary statistics. Your job is to:

1. Ask which department, which fiscal years, and what the 1-2 headline findings are.
2. Identify the interpretive tension in the data. What's the surprising finding? What are the two plausible readings?
3. Propose a structure using the standard architecture above. Map the user's findings onto it.
4. Draft section by section, integrating the statistics precisely.
5. Suggest chart file references where charts should go.

### Entry Point 2: User has raw data or describes a dataset, wants analysis + post

The user has Open FI$Cal data but hasn't analyzed it yet. Your job is:

1. Help identify the most interesting questions to ask: spending growth, category composition, anomalous years, personnel vs. consulting split.
2. Suggest a Python analysis approach (see `references/python-analysis-guide.md`).
3. Once the user has run analysis and has numbers, proceed to Entry Point 1.

### Entry Point 3: User wants to write a new installment for a specific department

The user says "let's do California Counts on [department]." Your job is:

1. Note what Open FI$Cal fields are most useful for that department type (a spending agency vs. a regulatory body vs. infrastructure operator).
2. Ask what the user already knows about the department's function and recent history.
3. Draft the lead paragraph introducing the department. It's always needed regardless of what the data shows.
4. Help frame the analysis questions before the writing phase begins.

### Entry Point 4: Polishing a near-complete draft

1. Check for em dashes and remove.
2. Check that every major claim has a specific number attached.
3. Check that the caveats section is present and substantive.
4. Check that the interpretive tension section presents both frames honestly.
5. Check that the closing doesn't wrap up too neatly.

---

## Tone Calibration: Nonpartisan but Not Toothless

California Counts is nonpartisan but not neutered. The data often reveals structural patterns that are worth naming clearly. The skill is in framing the pattern precisely without editorializing toward a partisan conclusion.

Good: "The office that exists to build state capacity spends nearly half its budget on consulting."
Bad: "This hypocritical spending pattern shows the governor's office is all talk."

Good: "For every dollar spent on civil service salaries in FY24, the office spent $96 on exempt positions."
Bad: "The governor has bloated his political staff at taxpayer expense."

Both the "good" versions name the same structural fact. Neither tells the reader what to think about it. The reader draws the conclusion.

The critical read / generous read framework is the canonical tool for navigating this. When the data shows something that could be read as waste, inefficiency, or hypocrisy, always offer both a structural critique and a substantive defense. Both should be honest. Neither should be a strawman.

---

## What This Skill Does NOT Do

- Produce charts or run Python (the user runs analysis; this skill drafts the prose around it)
- Take partisan positions on California politics
- Write general Pioneering Spirit personal essays (use the pioneering-spirit-blog skill)
- Write CV Weekly local news columns (use the cv-weekly-writing skill)
- Reproduce budget documents or Open FI$Cal data verbatim
