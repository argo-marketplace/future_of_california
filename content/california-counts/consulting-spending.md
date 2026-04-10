---
title: "California Counts: The Consulting Checkbook"
date: 2026-04-10
tags:
  - spending
  - consulting
  - professional-services
  - open-fiscal
  - revolving-door
  - data-journalism
---

# California Counts: The Consulting Checkbook
## What we know, and don't, about who the state pays to think for it

The first two installments of California Counts looked at a single department at a time: the Governor's Office, then the GovOps Secretary. Reading the numbers line by line, the same phrase kept surfacing in the expenditure files: **Consult & Prof Svcs Extern Oth**. "Consulting and Professional Services, External, Other." It is the catch-all bucket for what the state pays outsiders to do work it hasn't staffed up to do itself. At GovOps alone, that one line item totaled about $415 million over a decade, out of $437 million in total consulting spend.

That's one medium-sized agency. What about the rest? Who are the biggest recipients? Is consulting spend growing faster than the services Californians actually receive? And the harder question, the one that barely shows up in the data at all: does the revolving door between agency leadership and consulting firms shape who gets those contracts?

I spent this week trying to answer those questions using Open FI$Cal and the public record. What follows is partly a report, partly a confession about what the data cannot tell you without a lot more work than a single weekend.

---

## The Shape of the Pie

Start with the basics. FI$Cal, the state's financial system, processes more than $453 billion in expenditures each year across 150 departments. Open FI$Cal, the public-facing portal, publishes a filtered view covering 79 percent of that: 151 departments and 188 business units. The data is unaudited and lives at the general-ledger account-code level, not the contract level. So when you ask, "how much does California spend on consulting?" the honest answer starts with: it depends on what you count.

The cleanest slice is the account code family that Open FI$Cal groups as professional and consulting services, the codes that start with "5340600." Pull those rows across all departments and fiscal years and a clear pattern emerges: consulting and professional-services spending has been rising faster than state spending overall. The [CalMatters analysis](https://calmatters.org/newsletters/whatmatters/2023/08/california-state-workers-contracts/) of the Newsom era notes that total state spending has grown about 9 percent per year on average since 2019 while revenues grew 6. Within that, the consulting line has outpaced the total. I can't give you a precise statewide annual total without more time with the raw files, because Open FI$Cal's consulting categories sit under slightly different account strings at different agencies and because the "Extern Oth" bucket swallows an enormous share of the detail. But the direction of travel, and the magnitude, are not in dispute.

A handful of data points frame the scale:

- **$153.7 million.** Office of Systems Integration payments to Deloitte Consulting LLP in FY 2023-24 alone, for "business corporate management consulting services and IT consulting services," according to Open FI$Cal's own front-page example. ([Open FI$Cal](https://open.fiscal.ca.gov/))
- **$415 million.** Ten years of "Consult & Prof Svcs Extern Oth" at GovOps Secretary (Dept 0511), most of it concentrated in the FY19-FY20 Census surge.
- **Up to $556 million.** The CalSAWS maintenance-and-enhancements contract awarded to Deloitte in 2023, replacing more than two decades of Accenture work on California's public-assistance eligibility systems. ([GovTech Insider](https://insider.govtech.com/california/news/gainwell-technologies-deloitte-get-nod-for-massive-calsaws-contract))
- **$700 million.** The "Rail Delivery Partner" program-management contract awarded to Parsons Brinckerhoff (now WSP) in 2015 for California High-Speed Rail, alongside separate nine-figure design-and-construction-management packages to HNTB and others. ([Wikipedia](https://en.wikipedia.org/wiki/Construction_of_California_High-Speed_Rail))
- **$236 million.** Private-contractor spending at EDD during the pandemic, including at least $69 million in no-bid emergency contracts to Deloitte to stand up the unemployment call center. ([CalMatters](https://calmatters.org/economy/2021/04/california-unemployment-crisis-contracts/))

Those are five line items at five different agencies, and they add up to more than $1.8 billion in commitments without straining to find them. Multiply across the 151 agencies on Open FI$Cal and the pattern becomes the point.

---

## Who Gets the Money

The top of the recipient list is not surprising to anyone who has watched state IT procurement. A few firms show up again and again.

**Deloitte Consulting LLP** is the single most visible name. Deloitte built and long operated FI$Cal itself, a project the [Legislative Analyst's Office faulted in 2021](https://insider.govtech.com/california/news/legislative-analyst-faults-fical-over-costs-scope-oversight.html) for cost and schedule overruns and for repeatedly redefining what "complete" meant. Deloitte ran the EDD unemployment call center whose cost ballooned from $11 million to $55 million while [tens of millions of calls went unanswered](https://www.capradio.org/articles/2021/03/11/cost-of-deloittes-edd-phone-center-balloons-to-55m-as-millions-of-calls-go-unanswered). Deloitte now holds the CalSAWS maintenance contract for the eligibility system 58 counties use to enroll Californians in Medi-Cal and CalFresh. Deloitte is the Office of Systems Integration's largest vendor. When Open FI$Cal needed an illustrative example for its own front page of what the data can show, the example it chose was a nine-figure payment to Deloitte.

**Accenture** has deep roots on the other side of the same street: two decades running CalHEERS and legacy welfare systems before losing CalSAWS maintenance to Deloitte, plus ongoing work on the [Franchise Tax Board, CalPERS, and the state's Child Support system](https://www.accenture.com/). **Maximus, Gainwell Technologies, Thomson Reuters,** and **Salesforce** (largely via resellers) all show up as multi-million-dollar EDD and health-and-human-services vendors. For transportation, the dominant names are engineering-consultancy giants: **WSP** (formerly Parsons Brinckerhoff), **HNTB**, **HDR**, and **Jacobs**, collectively running the program-management and design functions for High-Speed Rail, most of Caltrans's megaprojects, and a large share of the transit-industrial complex. For communications and outreach, **Mercury Public Affairs** alone received $46 million for the 2020 Census statewide media campaign that flowed through GovOps.

None of that is obscure. All of it is in Open FI$Cal, or in procurement announcements, or in press coverage of the contracts. What's harder is building a ranked list, because the "Consult & Prof Svcs Extern Oth" bucket often names the vendor only in the supplier field of the transaction, and vendor names are not normalized. "Deloitte Consulting LLP," "Deloitte & Touche LLP," and "Deloitte Consulting L.L.P." can all appear as different strings. Any serious "top ten" table requires de-duplicating supplier names across millions of rows. That's a project worth doing. For this post it's a gap I'm flagging rather than filling.

---

## Has Spending Outgrown Delivery?

This is the question I most wanted to answer and least could. It is the right question. It is also the one the data is worst at resolving, for the same reason the earlier California Counts posts kept hitting: financial transparency data shows you inputs, not outputs.

Here is what we can say with some confidence.

Consulting spending has grown faster than inflation and, at the agencies I've looked at closely, faster than the state workforce serving the same programs. The GovOps post documented this at Dept 0511: the office spends roughly as much on consulting and professional services as on its own staff, $12.7 million in consulting against $7.9 million in salaries in the FY22-FY24 average. The Governor's Office post showed a different but related pattern: personnel grew 45 percent on the political-appointee side while civil service earnings stayed flat.

We also know that several of the largest consulting line items attach to projects whose delivery has been, charitably, uneven. FI$Cal itself. The EDD pandemic modernization. High-Speed Rail, whose projected cost has [climbed from $33 billion to more than $100 billion](https://en.wikipedia.org/wiki/Construction_of_California_High-Speed_Rail) while more than a third of disputed invoices in one NBC Bay Area analysis came from the program-management consultant. CalSAWS has delivered, but its cost curve is steep and its predecessor Accenture contract left behind a notorious BenefitsCal rollout.

On the other side of the ledger, the 2020 Census is a real success story. California invested $187.2 million through GovOps and hit a 69.6 percent self-response rate, beating the national average and improving on 2010 despite COVID. The PPIC analysis found California's count of Latinos, African Americans, and children was better than almost any other state. When the state decides something matters, the consulting-heavy model can actually muster capacity fast. The question is whether that surge capacity ever becomes durable institutional muscle, or whether it evaporates when the contracts end and leaves the agency back where it started.

The honest answer to "has spending grown faster than delivery?" is: yes on the big failures, no on the big successes, and we can't tell on the hundreds of mid-sized contracts that make up most of the money. To really answer the question you'd need to pair expenditure data with performance data (audits, program metrics, delivery milestones), and the state does not publish those two datasets in a way that joins cleanly. Building the join is itself the civic-data project.

---

## The Revolving Door

The hardest part of the question is also the most important. Individual cases are knowable. The systemic pattern is not, because California's [Form 700](https://www.fppc.ca.gov/) economic-disclosure filings, procurement records, and lobbying registrations live in three different databases that don't talk to each other, and post-government employment isn't required to be disclosed at all once someone leaves state service.

That said, here are a few names that are on the public record and worth knowing, offered as examples rather than accusations. The pattern is legal. It is also influential.

**Marybel Batjer**, the inaugural Secretary of the Government Operations Agency under Jerry Brown (2013-2019), went on to serve as President of the California Public Utilities Commission (2019-2021). In 2022 she joined **California Strategies LLC**, a public-affairs and government-relations firm whose separate lobbying arm, California Strategies & Advocacy, represents clients that intersect with the same state government she spent a career running. Her [announcement at the firm](https://www.businesswire.com/news/home/20220502005882/en/Marybel-Batjer-Joins-California-Strategies) is public. Batjer built GovOps. GovOps spent $437 million on consulting and professional services over the decade that followed.

**California Strategies LLC** as an institution is a case study in the normal, legal version of the revolving door. Its partner bench includes former state legislators, former cabinet officials, and former senior staff. Its business model is explicitly that its partners know how California government works because they used to run it. That's not a scandal; it's an industry. But it does mean that when a consulting firm wins a contract after a partner placed a call, the data will never show you the call.

**Former Health and Human Services Agency secretaries**, **former CIOs and CTOs**, and **former procurement officials** have moved to Deloitte, Accenture, KPMG, Gartner, and the smaller Sacramento public-affairs shops with enough regularity that the movement is its own sub-labor-market. I am deliberately not listing individual names beyond Batjer's here because the public record on most of them is thinner than it should be for a post that names them, and the point of California Counts is to be honest about what the data supports. The right version of this section is a structured dataset built from Form 700 filings, CalCareers exit records, LinkedIn histories, and lobbying registrations, cross-referenced against Open FI$Cal vendor payments. That dataset does not exist. It should.

What does exist is the pattern visible at the contract level. Deloitte has the FI$Cal contract and the CalSAWS contract and the OSI work and the EDD work. Accenture has the FTB and CalPERS and Child Support work. WSP has High-Speed Rail. The same handful of firms win, over and over, across administrations, under procurement rules that formally require competition. That could be because they are genuinely the only firms that can do the work at scale. It could also be because the people evaluating the bids used to work there, or will. Both can be true at once.

---

## What the Checkbook Can and Can't Tell You

The California Counts argument, repeated across these posts, is that the state's open data infrastructure is genuinely useful for civic oversight. I still believe that. Open FI$Cal exists because [Government Code section 11862](https://leginfo.legislature.ca.gov/) requires it. The data is machine-readable. Anyone with a laptop and a weekend can load it into a dataframe and find things.

But consulting spending is where the limits of that infrastructure are most visible.

- **Vendor names are not normalized.** Any serious "top recipients" analysis requires cleaning.
- **The "Extern Oth" bucket** hides the operational detail. You can see the check was cut. You can't always see what it bought.
- **Contract-level data lives elsewhere.** Cal eProcure and the State Contract and Procurement Registration System (SCPRS) hold the underlying agreements, but they are not joined to Open FI$Cal expenditure records in any reliable way.
- **Performance data lives nowhere.** There is no statewide equivalent of the federal USAspending.gov contract-performance feed. You can't filter for "contracts that delivered on time and on budget."
- **Post-government employment is not disclosed.** California has [revolving-door rules](https://www.fppc.ca.gov/learn/conflicts-of-interest/revolving-door.html) for specific categories of former officials, but the disclosure regime is narrow, short-lived, and not published as structured data.

Each of those is fixable. Normalizing vendor names is a weekend project. Joining Open FI$Cal to SCPRS is a quarter-long project that DGS could do on its own. Building a post-employment registry is a legislative choice. Publishing program-delivery milestones alongside the checkbook is a governance choice. None of this is exotic technology. It is unglamorous civic infrastructure of exactly the kind the state is good at when it decides to be.

---

## The Honest Ledger

If I had to summarize this post in a paragraph: California spends several billion dollars a year on consulting and professional services, the amount has grown faster than the state workforce at most agencies I've looked at closely, a small handful of firms dominate the top of the recipient list, some of that money buys genuine surge capacity and some of it buys ongoing dependence on the same vendors that delivered the last round of troubled systems, and the movement of people between the agencies and the firms is a real feature of how California government actually works that the open-data infrastructure is not yet built to illuminate. None of those sentences is a scandal by itself. Together they describe an accountability gap worth closing.

That's the report. The confession is that I wanted to give you a chart with seven years of statewide consulting spend broken out by recipient firm, and I could not build it cleanly in one weekend with the tools at hand. The cleaner version of this post is the one where the vendor names are normalized, the contracts are joined to the expenditures, the performance milestones are joined to the contracts, and the former-agency-head list is joined to the firm rosters. That post would be worth publishing. I'd like to help write it.

If you know of a dataset, a Form 700 trove, or a procurement archive that would make the next pass sharper, get in touch.

---

*Data sources: [Open FI$Cal](https://open.fiscal.ca.gov/), California's expenditure transparency portal. CalMatters reporting on [EDD pandemic contracts](https://calmatters.org/economy/2021/04/california-unemployment-crisis-contracts/). GovTech Insider reporting on the [CalSAWS Deloitte contract](https://insider.govtech.com/california/news/gainwell-technologies-deloitte-get-nod-for-massive-calsaws-contract) and the [LAO FI$Cal critique](https://insider.govtech.com/california/news/legislative-analyst-faults-fical-over-costs-scope-oversight.html). Wikipedia's compilation on [California High-Speed Rail construction](https://en.wikipedia.org/wiki/Construction_of_California_High-Speed_Rail). [California Strategies LLC announcement](https://www.businesswire.com/news/home/20220502005882/en/Marybel-Batjer-Joins-California-Strategies) of Marybel Batjer as partner. All figures are unaudited and sourced either to Open FI$Cal expenditure records or to the reports linked above.*

*This is the third installment of California Counts. Previous posts examined the [Governor's Office](governors-office-spending.md) and the [GovOps Secretary](govops-back-office.md) one department at a time. This one tries to zoom out across agencies. The zoom is imperfect. The next one will be sharper.*
