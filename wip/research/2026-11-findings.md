# Source register: Data Center MEP-QS enrichment (November 2026)

Compiled 2026-11-23 from the five research notes in
`wip/research/research_notes/Data center MEP QS enrichment/`. Every
"Accessed" date is the research date recorded in the notes
(2026-11-23). Nothing here has been re-verified since then.

## Verification flags

The Verification column uses four levels:

- **primary-read**: the figure or edition was read on the publisher's
  own page, catalogue record or official text. Catalogue entries that
  the notes marked VERIFIED fall here.
- **secondary**: the item comes from trade press, a law firm, a
  retailer listing or a third party quoting the source. The notes'
  "Press" and "PARTLY" tiers fall here.
- **snippet**: the item was seen only in a search-engine summary.
- **UNVERIFIED**: the item comes from background knowledge or a
  pattern-based URL and was not confirmed. The notes'
  [UNVERIFIED-BACKGROUND] items fall here.

Four other tags are carried over unchanged from the notes:

- **[VENDOR]**: the source sells a product or service in the area it
  is talking about.
- **[REVIEW-SOURCE]**: the item comes from Scribd or a similar upload.
- **(URL unverified)**: the URL follows a publisher pattern and was
  not seen in search results.
- **(inference)**: the researcher reasoned this out; no source states
  it.

No flag has been upgraded.

Chapter files are named without their `book/volume-N/` prefix. The `§`
sign names the target section heading in a shortened form.

Confidence is graded H (high), M (medium) or L (low).

## A. Standards and editions (S)

| ID | Claim (paraphrased) | Value & unit | Region | Source (publisher, title, edition/date) | URL | Accessed | Verification | Target chapter file & section | Confidence |
|---|---|---|---|---|---|---|---|---|---|
| S01 | NFPA 2001 current edition is 2025; 2022 superseded; TIA 25-1 (egress time study, 4.3.4/A.4.3.4) issued 15 Apr 2026, effective 5 May 2026 | 2025 ed.; TIA 25-1 | US / intl | NFPA, NFPA 2001 Clean Agent Fire Extinguishing Systems, 2025; NFPA TIA 2001-25-1 | https://webstore.ansi.org/standards/nfpa/nfpa20012025 ; https://docinfofiles.nfpa.org/files/AboutTheCodes/2001/TIA_2001_25_1.pdf | 2026-11-23 | secondary (retail catalogue; notes "VERIFIED (retail)"); NFPA page (URL unverified) | 13-fire-suppression-for-white-space.qmd § Clean agent gaseous suppression; § Room integrity testing | H |
| S02 | NFPA 72 referenced edition is 2025 | 2025 ed. | US | NFPA, NFPA 72 National Fire Alarm and Signaling Code, 2025 (named in NFPA 2001 Second Draft report) | https://docinfofiles.nfpa.org/files/AboutTheCodes/2001/2001_F2024_GFE_AAA_SD_SRReport.pdf | 2026-11-23 | secondary (PARTLY); official page (URL unverified) | 14-fire-detection-vesda.qmd § FACP and voice evacuation | M |
| S03 | NFPA 76 current edition 2024; 2020 superseded 15 Jan 2024; Li-ion battery requirements reportedly moved to NFPA 855; one ANSI page labels 2024 but describes 2020 | 2024 ed. | US | NFPA, NFPA 76 Fire Protection of Telecommunications Facilities, 2024 | https://shop.standards.ie/en-ie/standards/nfpa-76-2024-829570_saig_nfpa_nfpa_3362064 ; https://www.fire-police-ems.com/NFPA76-2024.shtml | 2026-11-23 | secondary (PARTLY, retail) | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| S04 | ISO 14520-1 4th edition Feb 2023 cancels 2015; total-flooding, non-conducting residue-free agents | 2023, 4th ed. | Intl | ISO/TC 21/SC 8, ISO 14520-1:2023 | https://www.iso.org/standard/79444.html | 2026-11-23 | primary-read | 13-fire-suppression-for-white-space.qmd § Clean agent gaseous suppression | H |
| S05 | EN 54-20:2006+AC:2008 remains current ASD standard; prEN 54-20:2014 withdrawn; "prEN 54-20 rev" review closed Aug 2021, no successor | 2006+AC:2008 | EU | CEN, EN 54-20 Aspirating smoke detectors (DIN EN 54-20:2009-02) | https://dinmedia.de/en/standard/din-en-54-20/115703955 ; https://genorma.com/en/standards/pren-54-20-rev | 2026-11-23 | primary-read (national-body catalogues) | 14-fire-detection-vesda.qmd § ASD/VESDA | H |
| S06 | NFPA 70 current edition 2026; 2023 superseded; Art. 645 kept; 645.10 EPO applies only if 645.5 alternative wiring allowances are used | 2026 ed. | US | NFPA, NFPA 70 National Electrical Code, 2026; Building Code Forum post on Art. 645 | https://webstore.ansi.org/standards/nfpa/nfpa702026 ; https://www.thebuildingcodeforum.com/forum/threads/understanding-the-2026-nec-changes-to-article-645.38834/latest | 2026-11-23 | edition: secondary (retail, "VERIFIED"); Art. 645 detail: secondary (forum, verify) | 11-lv-distribution-white-space-power-delivery.qmd § Physical pathway segregation | edition H; Art. 645 L |
| S07 | IEC 61439-2 believed Ed. 3.0 (2020); companion 61439-1:2020 confirmed | 2020 | Intl | IEC TC 121, IEC 61439-2 | https://www.csagroup.org/store/product/iec_032338/ (61439-1 only) | 2026-11-23 | UNVERIFIED (Part 2 edition) | 11-lv-distribution-white-space-power-delivery.qmd § MLVS and PDUs | L |
| S08 | IEC 60364-1 Ed. 6.0 published 5 Sep 2025, replaces Ed. 5 (2005); fully restructured and renumbered | 2025, Ed. 6 | Intl | IEC TC 64, IEC 60364-1:2025 | https://webstore.iec.ch/en/publication/63699 | 2026-11-23 | primary-read | 11-lv-distribution-white-space-power-delivery.qmd § Technical-Commercial Overview | H |
| S09 | IEC 60364-5-52 believed Ed. 3.0 (2009); amendment status not checked | 2009? | Intl | IEC, IEC 60364-5-52 Wiring systems | (none) | 2026-11-23 | UNVERIFIED | 11-lv-distribution-white-space-power-delivery.qmd § Tray sizing economics | L |
| S10 | IEC 62271-200 Ed. 3.0 published 27 May 2021; AMD1:2024 published (consolidated Ed. 3.1) | 2021 + AMD1:2024 | Intl | IEC SC 17C, IEC 62271-200 | https://webstore.iec.ch/publication/63466 | 2026-11-23 | primary-read | 08-hv-mv-power-distribution.qmd § Medium-voltage switchgear assemblies | H |
| S11 | IEC 61850 is a multi-part series; cite the specific part and edition used | series | Intl | IEC, IEC 61850 series | https://webstore.iec.ch (URL unverified) | 2026-11-23 | UNVERIFIED | 08-hv-mv-power-distribution.qmd § MV switchgear; 17-bms-epms-dcim.qmd § EPMS | L |
| S12 | IEC 62040-3 Ed. 3.0 published 21 Apr 2021; efficiency annex normative; VFI/VI/VFD classes; FAT basis | 2021, Ed. 3 | Intl | IEC SC 22H, IEC 62040-3:2021 | https://webstore.iec.ch/en/publication/60140 | 2026-11-23 | primary-read | 10-ups-energy-storage.qmd § Static UPS systems; 20-the-five-level-commissioning-commercial-framework.qmd § Level 1 FAT | H |
| S13 | IEC 62305 Parts 1-4 are Ed. 3 (2024); Part 1 published 12 Sep 2024, replaces 2010; BSI advises adopting the full Ed. 3 set together | 2024, Ed. 3 | Intl | IEC TC 81, IEC 62305-1..4:2024; BSI | https://webstore.iec.ch/en/publication/27136 ; https://webstore.iec.ch/en/publication/33680 ; https://knowledge.bsigroup.com/products/protection-against-lightning-general-principles-3 | 2026-11-23 | primary-read | 12-earthing-bonding-lightning-protection.qmd § Structural lightning protection | H |
| S14 | IEC 62485-2 Ed. 1.0 (16 Jun 2010) is current; EN IEC 62485-2:2018 (identical) replaces EN 50272-2:2001; a "2016" edition cited by batterydesign.net is an error | 2010 / EN 2018 | Intl / EU | IEC, IEC 62485-2:2010; CENELEC, EN IEC 62485-2:2018 | https://webstore.iec.ch/en/publication/7091 ; https://shop.standards.ie/en-ie/standards/en-iec-62485-2-2018-353464_saig_cenelec_cenelec_806241 | 2026-11-23 | primary-read | 10-ups-energy-storage.qmd § Battery room installations | H |
| S15 | UL 9540 3rd edition 2023; ULSE release dated 28 Jun 2023 (others say Apr 2023; effective Sep 2024 for new certifications) | 2023, 3rd ed. | US / CA | ULSE, ANSI/CAN/UL 9540 Energy Storage Systems and Equipment | https://ulse.org/news/ulse-publishes-third-edition-ul-9540-energy-storage-systems-and-equipment | 2026-11-23 | primary-read (date conflict open) | 10-ups-energy-storage.qmd § Energy storage chemistries | H (edition), M (date) |
| S16 | UL 9540A 5th edition Mar 2025; 6th edition reported published 13 Mar 2026 | 5th 2025; 6th 2026? | US | ULSE, UL 9540A; Intertek blog 23 Mar 2026 | https://www.ul.com/services/ul-9540a-test-method ; https://www.intertek.com/blog/2026/03-23-understanding-the-2026-update-to-ul-9540a/ | 2026-11-23 | 5th: primary-read; 6th: secondary (PARTLY, test lab) | 10-ups-energy-storage.qmd § Energy storage chemistries | 5th H; 6th M |
| S17 | ANSI/TIA-942-C announced 9 May 2024; folds in 942-B Amd 1 (edge); rating annex normative; new informative immersion-cooling annex | May 2024 | US / intl | TIA TR-42, ANSI/TIA-942-C | https://tiaonline.org/?p=35007 ; https://tiaonline.org/products/tia-942/ | 2026-11-23 | primary-read | 16-elv-security-access-control.qmd § Structured cabling; 07-liquid-cooling-technology-cooling-systems.qmd § RDHx and Immersion | H |
| S18 | ANSI/TIA-607-E (14 May 2024) supersedes 607-D; TBB/TMGB/TGB; does not supersede NEC | May 2024 | US | TIA TR-42, ANSI/TIA-607-E | https://shop.standards.ie/en-ie/standards/tia-ansi-tia-607-e-2024-1066069_saig_tia_tia_3441099 | 2026-11-23 | secondary (retail, "VERIFIED") | 12-earthing-bonding-lightning-protection.qmd § White space MCBN | H |
| S19 | FIDIC Silver Book 2nd ed. 2017 reprinted Nov 2022 with amendments, effective 1 Jan 2023, same ISBN; incorporates Dec 2018 and Jun 2019 errata; clarifies "matter" vs "Claim" in 3.5 | 2017, reprint 2022 | Intl | FIDIC, Conditions of Contract for EPC/Turnkey Projects | https://www.fenwickelliott.com/knowledge-hub/international-quarterlies/issue-34/updating-the-fidic-rainbow-suite-the-2022-changes/ ; https://www.clydeco.com/en/insights/2023/04/fidic-2022-reprints-do-they-achieve-fidic-s-aim | 2026-11-23 | secondary (PARTLY: law firm, bookstore) | 01-epc-delivery-fundamentals.qmd § Contractual frameworks; 19-variation-governance-change-control-claims.qmd | H |
| S20 | SCL Delay and Disruption Protocol 2nd ed., Feb 2017, free download | 2017, 2nd ed. | UK / intl | Society of Construction Law | https://www.scl.org.uk/resources/delay-disruption-protocol (URL unverified) | 2026-11-23 | UNVERIFIED (catalogue metadata) | 19-variation-governance-change-control-claims.qmd § TIA and EOT | M |
| S21 | Incoterms 2020 (ICC pub. 723E); no successor known | 2020 | Intl | ICC, Incoterms 2020 | https://iccwbo.org/business-solutions/incoterms-rules/ (URL unverified) | 2026-11-23 | UNVERIFIED | 18-vendor-package-management-procurement-strategy.qmd § Bid leveling; 02-equipment-demarcation-packaging-ofci-vs-cfci.qmd | M |
| S22 | ISO 19650-1:2018 and -2:2018 believed current (1st eds.) | 2018 | Intl | ISO/TC 59/SC 13, ISO 19650-1/-2 | https://www.iso.org/standard/68078.html ; https://www.iso.org/standard/68080.html (URLs unverified) | 2026-11-23 | UNVERIFIED | 04-digital-takeoff-5d-bim-automated-measurement.qmd § BIM LOD; 22-handover-final-accounts-operational-transition.qmd § As-Built and COBie | M |
| S23 | BS 1192-4:2014 (COBie code of practice) withdrawn; superseded by BS EN ISO 19650-4:2022 (corrigendum Aug 2023); COBie not an ISO standard; UK COBie guidance moves to national annex | 2022 | UK / intl | BSI, BS 1192-4 record; BS EN ISO 19650-4:2022 | https://knowledge.bsigroup.com/products/collaborative-production-of-information-fulfilling-employer-s-information-exchange-requirements-using-cobie-code-of-practice ; https://bimplus.co.uk/iso-19650-4-the-final-piece-of-the-bim-standards-jigsaw | 2026-11-23 | primary-read (BSI record) | 22-handover-final-accounts-operational-transition.qmd § As-Built and COBie | H |
| S24 | NBIMS-US V3 (2015) contains COBie 2.4; V4 status unknown | V3 2015 | US | NIBS, NBIMS-US | https://www.nibs.org/nbims (URL unverified) | 2026-11-23 | UNVERIFIED | 22-handover-final-accounts-operational-transition.qmd § As-Built and COBie | L |
| S25 | RICS WLCA 2nd ed. Sep 2023, Version 2 Nov 2023, effective 1 Jul 2024; mandatory for RICS members; covers infrastructure, retrofit, mixed use | 2023, 2nd ed. | Global (UK-based assumptions) | RICS, Whole Life Carbon Assessment for the Built Environment | https://rics.org/news-insights/wlca-standard-2nd-edition-now-in-full-effect ; https://www.rics.org/content/dam/ricsglobal/documents/standards/Whole_life_carbon_assessment_PS_Sept23.pdf | 2026-11-23 | primary-read | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § Value engineering; 18-vendor-package-management-procurement-strategy.qmd § RFQs | H |
| S26 | RICS Cost Prediction 1st ed. Nov 2020, effective 1 Jul 2021, reissued Jun 2024 as professional standard with no material change; supplements ICMS | 2020 / 2024 | Global | RICS, Cost Prediction | https://www.rics.org/profession-standards/rics-standards-and-guidance/sector-standards/construction-standards/rics-cost-prediction-professional-statement-global-1st-edition | 2026-11-23 | primary-read | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § Establishing the cost baseline | H |
| S27 | AACE RP 18R-97 Cost Estimate Classification (EPC, process industries) revised 7 Aug 2020 | rev. 2020 | Intl | AACE International, RP 18R-97 | https://pathlms.com/aace/courses/2928/documents/3803 | 2026-11-23 | primary-read (AACE listing) | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § Establishing the cost baseline | H |
| S28 | ASHRAE Guideline 0-2019 (Cx process) harmonised with ANSI/ASHRAE/IES Std 202-2024 | 2019; 2024 | US / intl | ASHRAE, Guideline 0-2019; Standard 202-2024 | https://www.ashrae.org/technical-resources/bookstore/commissioning ; https://webstore.ansi.org/standards/ashrae/ansiashraeies2022024 | 2026-11-23 | secondary (bookstore and retail listings) | 20-the-five-level-commissioning-commercial-framework.qmd § Commissioning cost dynamics | M |
| S29 | CIBSE Commissioning Code M: Commissioning Management 2022, published Jul 2022 | 2022 | UK | CIBSE, Code M | https://www.cibse.org/knowledge-research/knowledge-portal/commissioning-code-m-ccm-commissioning-management-2022 | 2026-11-23 | primary-read | 20-the-five-level-commissioning-commercial-framework.qmd § Commissioning cost dynamics | H |
| S30 | Practitioner text: Sørensen, FIDIC Silver Book, Revised edition (Emerald, ISBN 9781836081814) | n/a | Intl | Emerald Publishing | https://bookstore.emerald.com/fidic-silver-book-revised-edition-pb-9781836081814.html | 2026-11-23 | secondary (bookstore) | 01-epc-delivery-fundamentals.qmd § Contractual frameworks; 19-variation-governance-change-control-claims.qmd | M |
| S31 | RICS NRM1 (3rd ed., 2021) and NRM3 (2nd ed., 2020/2021) editions | n/a | UK / global | RICS | (none) | 2026-11-23 | UNVERIFIED | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § WBS/CBS | L |
| S32 | NFPA 855 may have a 2026 edition (book cites 2023) | 2026? | US | NFPA, NFPA 855 | (none) | 2026-11-23 | UNVERIFIED | 10-ups-energy-storage.qmd § Energy storage chemistries | L |
| S33 | AACE 56R-08 (building and general construction) may fit building MEP better than 18R-97 | n/a | Intl | AACE International | (none) | 2026-11-23 | UNVERIFIED (inference) | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § Establishing the cost baseline | L |

## B. Market data 2024-2026 (M)

| ID | Claim (paraphrased) | Value & unit | Region | Source (publisher, title, edition/date) | URL | Accessed | Verification | Target chapter file & section | Confidence |
|---|---|---|---|---|---|---|---|---|---|
| M01 | US country average construction cost | 12.08 USD/W | US | Turner & Townsend, DCCI 2026-27 (10th ed.), 22 Oct 2026 | https://www.turnerandtownsend.com/insights/data-centre-construction-cost-index-2026-27/ | 2026-11-23 | primary-read | 03-pre-contract-cost-planning-estimating-benchmarking.qmd § Establishing the cost baseline | H |
| M02 | Most advanced AI-specific US facilities | 14.00-16.00 USD/W | US | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § High-density AI/HPC economics | H |
| M03 | Tokyo, the most expensive market | 18.28 USD/W | APAC | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M04 | Osaka | 17.15 USD/W | APAC | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M05 | Zurich | 15.93 USD/W | Europe | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M06 | Saudi Arabia, rank 40 of 62 (also reported as 23rd-cheapest, same position) | 10.80 USD/W | GCC | T&T DCCI 2026-27 via Reuters, 26 Oct 2026 | https://www.tradingview.com/news/reuters.com,2026-10-26:newsml_Zaw6L2Cm0:0-saudi-arabia-is-costliest-gulf-market-for-data-centre-construction-turner-townsend-report/ | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M07 | Qatar, rank 53 of 62 | 9.80 USD/W | GCC | T&T DCCI 2026-27 via Enterprise AM, Oct 2026 | https://enterpriseam.com/menaplus/2026/10/28/gulf-leads-the-world-on-data-center-construction-costs-turner-townsend-says/ | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M08 | UAE, rank 58 of 62 | 9.20 USD/W | GCC | T&T DCCI 2026-27 via Enterprise AM, Oct 2026 | https://enterpriseam.com/ai/2026/10/27/middle-east-leads-on-data-center-construction-costs-report-finds/ | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M09 | Middle East regional average, cheapest region | 9.93 USD/W | GCC | T&T DCCI 2026-27 via IndexBox | https://www.indexbox.io/blog/middle-east-ranked-cheapest-region-for-data-centre-construction-as-ai-demand-surges/ | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M10 | Europe / Asia / North America regional averages | 12.76 / 12.10 / 12.06 USD/W | Europe / APAC / NA | T&T DCCI 2026-27 via IndexBox | same as M09 | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M11 | Average cost-per-watt change, North America and Europe | +13 % YoY | NA, Europe | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M12 | Method: 62 markets (12 new), 500+ projects, 401 respondents, typical 60 MW design; 81% say skilled labour constrained; 52% saw 6-15% inflation in 2026 | 60 MW basis; % | Global | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M13 | All-in greenfield cost, modern facilities, excluding chips/GPUs | 17.6 USD M/MW | US and Canada | Cushman & Wakefield, 2026 Data Center Development Cost Guide, Aug 2026 | https://finviz.com/news/388803/cushman-wakefield-releases-2026-data-center-development-cost-guide-citing-21-rise-in-per-mw-construction-costs | 2026-11-23 | secondary (press release; full guide gated) | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M14 | Range across markets | 8.9-23.3 USD M/MW | US and Canada | C&W, 2026 Guide | same as M13 | 2026-11-23 | snippet (press) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M15 | Per-MW cost change since Q4 2024 edition | +21 % | US and Canada | C&W, 2026 Guide, 20 Aug 2026 (IREI) | https://irei.com/news/cushman-wakefield-releases-2026-data-center-development-cost-guide-citing-21-rise-in-per-mw-construction-costs/ | 2026-11-23 | secondary (press) | 03-...benchmarking.qmd § Establishing the cost baseline | H |
| M16 | Powered land, primary US markets, 2026 YTD | 584,000 USD/MW | US | C&W, 2026 Guide via CRE Daily | https://www.credaily.com/briefs/data-center-construction-costs-jump-21-since-2024/?.tsrc=rss | 2026-11-23 | snippet (press) | 01-epc-delivery-fundamentals.qmd § Structural economics | M |
| M17 | Average global construction cost, shell and core only, 2026 forecast | 11.3 USD M/MW (+6% YoY) | Global | JLL, 2026 Global Data Center Outlook | https://www.jll.com/en-us/insights/market-outlook/data-center-outlook | 2026-11-23 | snippet (publisher page) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M18 | Shell and core 2025 actual vs 2020 | 10.7 (2025); 7.7 (2020) USD M/MW; 7% CAGR | Global | JLL, 2026 Outlook | https://www.jll.com/en-uk/insights/data-center-outlook | 2026-11-23 | snippet (publisher page) | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M19 | Tenant tech fit-out for AI infrastructure | up to 25 USD M/MW | Global | JLL, 2026 Outlook | same as M17 | 2026-11-23 | snippet (publisher page) | 03-...benchmarking.qmd § High-density AI/HPC economics | M |
| M20 | Tokyo / Singapore / Zurich (prior edition) | 15.2 / 14.5 / 14.2 USD/W | APAC / Europe | T&T, DCCI 2025-2026, mid-2025 | https://www.turnerandtownsend.com/news/ai-data-centre-rush-raises-alarm-over-construction-supply-chain | 2026-11-23 | secondary (press) | 03-...benchmarking.qmd § Establishing the cost baseline (trend) | M |
| M21 | Silicon Valley / Charlotte (new) (prior edition) | 13.3 / 9.5 USD/W | US | T&T, DCCI 2025-2026 via IREI | https://irei.com/news/turner-townsen-releases-data-center-construction-cost-index/ | 2026-11-23 | secondary (press) | 03-...benchmarking.qmd (trend) | M |
| M22 | London / Frankfurt / Oslo (prior edition) | 12.0 / 11.6 / 12.4 USD/W | Europe | T&T, DCCI 2025-2026 | same as M20 | 2026-11-23 | secondary (press) | 03-...benchmarking.qmd (trend) | M |
| M23 | Saudi Arabia / UAE (prior edition) | 11.3 / 9.2 USD/W | GCC | T&T, DCCI 2025-2026 | https://www.turnerandtownsend.com/insights/data-centre-construction-cost-index-2025-2026/ | 2026-11-23 | snippet (search-summary only, UNVERIFIED) | 03-...benchmarking.qmd (trend) | L |
| M24 | Traditional air-cooled cost-per-watt change | +5.5 % YoY (2024 ed.: +9.0) | Global | T&T, DCCI 2025-2026 | same as M20 | 2026-11-23 | secondary (press) | 03-...benchmarking.qmd (trend) | M |
| M25 | Gulf T&T figures are conventional air-cooled and exclude land, utility works and IT/chips | scope note | GCC | Enterprise AM on T&T DCCI 2026-27 | same as M07 | 2026-11-23 | snippet | 03-...benchmarking.qmd § Establishing the cost baseline | M |
| M26 | Power infrastructure is the largest cost component; switchgear costs rose ~60% Dec 2021 to early 2026 | 21 % of greenfield; +60 % | US and Canada | C&W, 2026 Guide via Finviz/Business Wire | same as M13 | 2026-11-23 | snippet (press) | 01-epc-delivery-fundamentals.qmd § Structural economics; 08-hv-mv-power-distribution.qmd | M |
| M27 | AI-workload US data centres cost about 10% more than traditional | ~10 % premium | US | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 03-...benchmarking.qmd § High-density AI/HPC economics | H |
| M28 | AI premium over traditional US builds of similar capacity (prior edition) | 7-10 % | US | T&T news release 2025 | same as M20 | 2026-11-23 | secondary (press summary) | 03-...benchmarking.qmd § High-density AI/HPC economics | M |
| M29 | 39% of respondents mainly on AI-ready facilities; 53% expect AI-dominant workloads; MEP trades most sought-after | 39 % / 53 % | Global | T&T, DCCI 2026-27 | same as M01 | 2026-11-23 | primary-read | 18-vendor-package-management-procurement-strategy.qmd § Subcontract tendering | H |
| M30 | Applying the ~10% US AI premium to GCC air-cooled baselines gives an AI-ready estimate | ~10.1-11.9 USD/W | GCC | Researcher extrapolation, not published | (none) | 2026-11-23 | UNVERIFIED (inference) | 03-...benchmarking.qmd § High-density AI/HPC economics (label as author calculation) | L |
| M31 | Power transformers average lead time (down 10 weeks QoQ) | 128 weeks | US | Wood Mackenzie Q2 2025 survey via pv magazine, 15 Aug 2025 | https://www.pv-magazine.com/2025/08/15/us-transformer-supply-may-fall-sharply-in-2025-says-wood-mackenzie/ | 2026-11-23 | secondary (press) | 18-vendor-package-management-procurement-strategy.qmd § Lead-time risk; 08-hv-mv-power-distribution.qmd § Transformers | H |
| M32 | GSU transformers average lead time (one secondary says 143) | 144 weeks | US | Wood Mackenzie Q2 2025 via pv magazine | same as M31 | 2026-11-23 | secondary (press) | 18-...procurement-strategy.qmd § Lead-time risk | H |
| M33 | GSU transformers lead time Q1 2026 (vs 143 avg in 2024) | >160 weeks | US | POWER magazine, 2026 | https://powermag.com/transformers-in-2026-shortage-scramble-or-self-inflicted-crisis/ | 2026-11-23 | snippet (press) | 18-...procurement-strategy.qmd § Lead-time risk | M |
| M34 | Distribution transformers average lead time (peak >100 weeks in 2023) | 30 weeks | US | Wood Mackenzie Q2 2025 via pv magazine | same as M31 | 2026-11-23 | secondary (press) | 18-...procurement-strategy.qmd § Lead-time risk | H |
| M35 | Transformers average 120 weeks (50 in 2021); large substation/GSU 80-210 weeks | 120 wk; 80-210 wk | US | NIAC draft report, Jun 2024, quoting Wood Mackenzie | https://cisa.gov/sites/default/files/2024-06/DRAFT_NIAC_Addressing%20the%20Critical%20Shortage%20of%20Power%20Transformers%20to%20Ensure%20Reliability%20of%20the%20U.S.%20Grid_Report_06052024_508c.pdf | 2026-11-23 | secondary (government report quoting WoodMac) | 18-...procurement-strategy.qmd § Lead-time risk | H |
| M36 | Utility transformers up to 2 years (4x pre-2022); prices up 4-9x in 3 years | ~2 yr; 4-9x | US | NREL, report 87653, FY2024 | https://www.nrel.gov/docs/fy24osti/87653.pdf | 2026-11-23 | primary-read (distribution-transformer focus) | 08-hv-mv-power-distribution.qmd § Transformers; 18-...procurement-strategy.qmd | H |
| M37 | Diesel standby generators lead time | 60-100 weeks | US | C&W 2026 Guide as cited by Terrapin | https://terrapincg.com/news/switchgear-transformer-generator-lead-times-2026 | 2026-11-23 | secondary | 09-standby-generation-emergency-power.qmd § Diesel and gas-fired gensets; 18-... § Lead-time risk | M |
| M38 | Diesel generators lead time (20-30 weeks pre-COVID) | 72-104+ weeks | US | Giga Energy blog [VENDOR] | https://www.gigaenergy.com/blog/lead-time-delays-for-data-centers | 2026-11-23 | secondary [VENDOR] | 09-standby-generation-emergency-power.qmd | L |
| M39 | Switchgear average lead time, Q2 2025 | ~44 weeks | US | Wood Mackenzie per Terrapin summary | same as M37 | 2026-11-23 | secondary | 08-hv-mv-power-distribution.qmd § MV switchgear; 18-... | M |
| M40 | MV switchgear lead time, 2026 | 52-80 weeks | US | Blackforge guide | https://www.blackforgedatacenters.com/guides/transformer-and-switchgear-lead-times | 2026-11-23 | secondary | 08-hv-mv-power-distribution.qmd § MV switchgear | L |
| M41 | Static UPS 500-1,500 kVA vs rotary/DRUPS lead time | 30-48 wk; 60-80+ wk | Global | DC Atlas, 2026 | https://dcatlas.io/en/articles/trends/data-center-supply-chain-lead-times-delivery-delays | 2026-11-23 | secondary | 10-ups-energy-storage.qmd § Static UPS; § Rotary UPS | L |
| M42 | Projected 2025 supply deficit: power transformers 30%, distribution 10%; imports ~80% of US power transformer supply | 30 % / 10 % / 80 % | US | Wood Mackenzie press release | https://www.woodmac.com/press-releases/power-transformers-and-distribution-transformers-will-face-supply-deficits-of-30-and-10-in-2025 | 2026-11-23 | primary-read | 18-...procurement-strategy.qmd § Lead-time risk | H |
| M43 | DOE Large Power Transformer Resilience Report to Congress, signed 10 Jul 2024 (numbers not extracted) | n/a | US | US DOE | https://www.energy.gov/sites/default/files/2024-10/EXEC-2022-001242%20-%20Large%20Power%20Transformer%20Resilience%20Report%207-10-24.pdf | 2026-11-23 | primary (located, not extracted) | 08-hv-mv-power-distribution.qmd § Utility interconnection | M |
| M44 | Most recent major outage cost >USD 100k | 57 % of respondents | Global | Uptime Institute, Annual Outage Analysis 2026 (UII Keynote 201), 13 May 2026 | https://www.businesswire.com/news/home/20260513289344/en/Uptime-Announces-Annual-Outage-Analysis-Report-2026 | 2026-11-23 | primary-read (publisher press release) | 01-epc-delivery-fundamentals.qmd § intro paragraph; intro-commercial-architecture.qmd | H |
| M45 | Most recent impactful outage >USD 1M, second year running | ~20 % (1 in 5) | Global | Uptime Institute, AOA 2026 | https://intelligence.uptimeinstitute.com/resource/annual-outage-analysis-2026 | 2026-11-23 | primary-read | 01-epc-delivery-fundamentals.qmd | H |
| M46 | Most recent significant outage >USD 100k; >USD 1M | 54 %; 20 % | Global | Uptime Institute, AOA 2025 (Keynote 173), 6 May 2025 | https://www.businesswire.com/news/home/20250506733553/en/Uptime-Announces-Annual-Outage-Analysis-Report-2025 | 2026-11-23 | primary-read | 01-epc-delivery-fundamentals.qmd | H |
| M47 | Operators reporting an outage in the past 3 years | 53 % (78 % in 2020) | Global | Uptime AOA 2025 via Data Center Knowledge | https://www.datacenterknowledge.com/outages/data-center-outages-decline-for-fourth-straight-year-but-issues-persist | 2026-11-23 | secondary (press) | 01-epc-delivery-fundamentals.qmd | M |
| M48 | Serious or severe share of incidents, lowest on record | 9 % | Global | Uptime AOA 2025 | https://intelligence.uptimeinstitute.com/resource/annual-outage-analysis-2025 | 2026-11-23 | primary-read | 01-epc-delivery-fundamentals.qmd | H |
| M49 | Unplanned outage cost per minute (63 US data centres; one outlet labels 2015) | 8,851 USD/min | US | Ponemon Institute / Emerson Network Power, Cost of Data Center Outages, Jan 2016 | https://emerson.com/en-us/news/corporate/network-power-study | 2026-11-23 | primary-read | 01-epc-delivery-fundamentals.qmd § intro; intro-commercial-architecture.qmd | H |
| M50 | Average cost per outage, +38% vs 2010 | 740,357 USD | US | Ponemon/Emerson 2016 via Cabling Install | https://www.cablinginstall.com/data-center/article/16472731/report-average-data-center-outage-cost-has-risen-38-in-5-years | 2026-11-23 | secondary (press) | 01-epc-delivery-fundamentals.qmd | M |
| M51 | Outage frequency per site fell 5 years running, improvement slowing; power leading cause; fibre/connectivity outages rising; costs up from inflation, labour, SLA penalties | qualitative | Global | Uptime AOA 2026 press release | same as M44 | 2026-11-23 | primary-read | 01-epc-delivery-fundamentals.qmd; 08-hv-mv-power-distribution.qmd overview | H |
| M52 | On-site power distribution failures most common cause of serious outages; 80% said better management/processes would have prevented the latest incident | 80 % | Global | Uptime AOA 2025 press release | same as M46 | 2026-11-23 | primary-read | 11-lv-distribution-white-space-power-delivery.qmd overview; 20-...commissioning... | H |
| M53 | Ponemon sample of 63 US organisations, unplanned outages only; UPS failure (incl. batteries) caused ~25% | ~25 % | US | Ponemon/Emerson 2016 | same as M49 | 2026-11-23 | primary-read | 10-ups-energy-storage.qmd overview | H |
| M54 | New-construction commissioning median cost | 0.4 % of construction cost (~1.16 USD/ft2) | US (commercial bldgs) | LBNL, Cx cost-benefit page (2009 dataset) | https://cx.lbl.gov/cost-benefit.html | 2026-11-23 | primary-read | 20-the-five-level-commissioning-commercial-framework.qmd § Commissioning cost dynamics | H |
| M55 | Same 0.4% median in peer-reviewed paper | 0.4 % | US | Mills (2011), Energy Efficiency journal | https://link.springer.com/doi/10.1007/s12053-011-9116-8 | 2026-11-23 | primary-read | 20-...framework.qmd § Commissioning cost dynamics | H |
| M56 | "Ideal" commissioning budget for a complex data centre (Emerson engineer, undated) | ~1.5 % of construction cost | n/a | Data Center Knowledge article [VENDOR opinion] | https://www.datacenterknowledge.com/business/getting-the-most-out-of-commissioning-through-best-practices | 2026-11-23 | secondary [VENDOR] | 20-...framework.qmd § Commissioning cost dynamics | L |
| M57 | AECOM ME Property & Construction Handbook 2025 exists; no data-centre USD/MW rate in accessible text | negative finding | GCC | AECOM MEH portal | https://publications.aecom.com/MEH/ | 2026-11-23 | primary-read (negative) | 03-...benchmarking.qmd (ref37_aecom_meh2024 check) | M |
| M58 | LBNL 2004 assessment flags data centres among high-tech facilities with distinct Cx challenges, no % given | qualitative | US | LBNL 2004 assessment | https://cx.lbl.gov/2004-assessment.html | 2026-11-23 | primary-read | 20-...framework.qmd | M |
| M59 | ASHRAE AI data-centre commissioning resource page exists; no cost % | qualitative | Intl | ASHRAE | https://www.ashrae.org/technical-resources/ai-data-center-framework/commissioning-performance-validation | 2026-11-23 | primary-read | 20-...framework.qmd | M |

## C. Emerging topics (E)

| ID | Claim (paraphrased) | Value & unit | Region | Source (publisher, title, edition/date) | URL | Accessed | Verification | Target chapter file & section | Confidence |
|---|---|---|---|---|---|---|---|---|---|
| E01 | Unnamed study: immersion capex vs DTC capex; hard to justify on capex alone | ~1.0 vs ~0.65 USD M/MW IT | n/a | Data Center Knowledge, "Why Immersion Cooling Still Hasn't Gone Mainstream", 2024/25 | https://datacenterknowledge.com/cooling/why-immersion-cooling-still-hasn-t-gone-mainstream | 2026-11-23 | snippet | 07-liquid-cooling-technology-cooling-systems.qmd § RDHx and Immersion | L |
| E02 | 2PIC lowest 10-yr TCO in most scenarios but higher capex than DTC; future N. Virginia scenario 2PIC TCO 13% above DTC | 13 % | US | LiquidStack/Chemours/Syska study via Facilities Dive, 2024 [VENDOR-commissioned] | https://www.facilitiesdive.com/news/dual-phase-immersion-cooling-can-lower-future-cost-of-ownership-in-most-cas/715361/ | 2026-11-23 | snippet [VENDOR] | 07-...cooling-systems.qmd § RDHx and Immersion | L |
| E03 | Day-one capex saving for 2PIC vs air, 36 MW layout | up to 3.5 USD M/MW | n/a | LiquidStack-commissioned case via The Register, 14 Apr 2023 [VENDOR] | https://www.theregister.com/2023/04/14/liquidstack_immersion_cooling/ | 2026-11-23 | snippet [VENDOR] | 07-...cooling-systems.qmd § RDHx and Immersion | L |
| E04 | Air vs liquid at 2 MW, 10 kW/rack near parity; liquid ~14% capex saving at 40 kW/rack (2020) | 7.02 vs 6.98 USD/W; 14 % | n/a | Schneider Electric blog, 24 Feb 2020 [VENDOR] | https://blog.se.com/datacenter/architecture/2020/02/24/liquid-vs-air-cooling-which-is-the-capex-winner/ | 2026-11-23 | primary-read [VENDOR] | 03-...benchmarking.qmd § High-density AI/HPC economics | M |
| E05 | Seven-strategy cooling comparison paper (cost figures not extracted) | n/a | US | UC Davis-linked paper, ACEEE Summer Study 2026 | https://escholarship.org/content/qt12w2793d/qt12w2793d.pdf ; https://www.aceee.org/sites/default/files/proceedings/ssb26/pdfs/369_0959_1434_000619.pdf | 2026-11-23 | primary (located, not extracted) | 07-...cooling-systems.qmd | M |
| E06 | Single-phase immersion density per tank (200 kW theoretical with chilled water) | up to 100 kW/tank | n/a | GRC; Vertiv blog [VENDOR] | https://www.grcooling.com/data-center-cold-wars-part-4single-phase-immersion-cooling-versus-rear-door-heat-exchangers ; https://www.vertiv.com/en-us/about/news-and-insights/articles/blog-posts/advancing-data-center-performance-with-immersion-cooling/ | 2026-11-23 | snippet [VENDOR] | 07-...cooling-systems.qmd § RDHx and Immersion | L |
| E07 | RDHx cost-competitive limit: GRC ~15 kW/rack vs distributor 30-50 kW/rack (conflict) | 15 vs 30-50 kW/rack | n/a | GRC [VENDOR competitor]; Alliance Chemical [VENDOR] | same GRC URL ; https://alliancechemical.com/blogs/articles/direct-to-chip-vs-immersion-cooling-fluid-types | 2026-11-23 | snippet [VENDOR] (conflict) | 07-...cooling-systems.qmd § RDHx and Immersion | L |
| E08 | Dielectric fluid vs glycol-water cost; loaded tank weights | 3-12 USD/L vs 0.15-0.40 USD/L; 2,000-4,000 kg | n/a | Alliance Chemical [VENDOR, chemicals seller] | https://alliancechemical.com/blogs/articles/direct-to-chip-vs-immersion-cooling-fluid-types | 2026-11-23 | snippet [VENDOR] | 07-...cooling-systems.qmd § RDHx and Immersion; § Secondary loop treatment | L |
| E09 | Single-phase coolant probably not replaced over facility life | qualitative | n/a | GRC ebook [VENDOR] | https://www.grcooling.com/wp-content/uploads/2021/06/grc_ebook_%E2%80%94_the_definitive_guide_to_single-phase_immersion_cooling.pdf | 2026-11-23 | UNVERIFIED [VENDOR] | 07-...cooling-systems.qmd | L |
| E10 | 54 V in-rack reaches limits above ~200 kW/rack; 1 MW rack at 54 V ~200 kg copper busbar (~200,000 kg per 1 GW); 1 MW racks from 2027 (Kyber) | 200 kW; 200 kg | Global | NVIDIA Technical Blog, 20 May 2025 [VENDOR] | https://developer.nvidia.com/blog/nvidia-800-v-hvdc-architecture-will-power-the-next-generation-of-ai-factories | 2026-11-23 | primary-read [VENDOR] | 11-lv-distribution-white-space-power-delivery.qmd § Overhead track busway | M |
| E11 | 13.8 kV AC to 800 VDC at perimeter; 85% more power same conductor; ~45% less copper vs 415 VAC; up to 5% efficiency, 70% maintenance, 30% TCO | 45 %; 5 %; 70 %; 30 % | Global | NVIDIA Technical Blog, 20 May 2025 [VENDOR] | same as E10 | 2026-11-23 | primary-read [VENDOR] | 11-...power-delivery.qmd § MLVS and PDUs; § Overhead track busway | M (architecture), L (savings) |
| E12 | Overcurrent protection at each boundary (power room-hall, hall-row, row-rack); energy storage for sub-second GPU swings; SST vs conventional transformer trade-off under study; partners Eaton, Schneider, Vertiv | qualitative | Global | NVIDIA Technical Blog [VENDOR] | same as E10 | 2026-11-23 | primary-read [VENDOR] | 11-...power-delivery.qmd; 10-ups-energy-storage.qmd | M |
| E13 | Staged path rack power racks (2H 2026) to cluster power centers to hall power blocks; 80+ ecosystem companies; later claim 157% more power than 415 VAC (conflicts with 85%) | 157 % | Global | NVIDIA 800 VDC product page; NVIDIA blog "Building the 800 VDC Ecosystem" [VENDOR] | https://www.nvidia.com/en-us/data-center/technologies/800-vdc-architecture/ ; https://developer.nvidia.com/blog/building-the-800-vdc-ecosystem-for-efficient-scalable-ai-factories | 2026-11-23 | snippet [VENDOR] (conflict) | 11-...power-delivery.qmd | L |
| E14 | OCP Mt Diablo v1.0.0 (8 Oct 2026, Microsoft/Meta/Google; renamed from Diablo 400): sidecar power rack with AC/DC, protection, optional storage; ±400 VDC to IT racks 100 kW-1 MW; 480 VAC input; EV supply chain; Mt Diablo 2.0 for native 800 V planned | ±400 VDC; 100 kW-1 MW | Global | OCP, Mt Diablo Disaggregated Power Rack Specification v1.0.0; OCP news on LVDC | https://www.opencompute.org/wp-content/uploads/2026/10/OCP-Specification-Mt.-Diablo-Disaggregated-Power-Rack-Specification-v1.0.0.pdf ; https://www.opencompute.org/news/powering-the-next-era-of-ai-how-google-microsoft-and-nvidia-are-standardizing-and-accelerating-the-industry-transition-to-lvdc/ | 2026-11-23 | snippet | 11-...power-delivery.qmd; 02-equipment-demarcation-packaging-ofci-vs-cfci.qmd § RACI | M |
| E15 | Google plans 1 MW IT racks using EV supply chain (OCP EMEA 2025) | 1 MW | Global | The Register, 1 May 2025 | https://www.theregister.com/2025/05/01/google_details_plans_for_1 | 2026-11-23 | secondary | 11-...power-delivery.qmd | M |
| E16 | NFPA 855 (2023) Table 1.3 Li-ion threshold: aggregate per fire area or outdoor installation, nameplate not usable energy | 20 kWh (72 MJ) | US | ACP ESS Codes Overview, 28 Jun 2023; WA State Register | https://cleanpower.org/wp-content/uploads/2023/07/ACP-ES-Product-6-ESS-Codes-and-Standards-Overview-6.28.23.pdf ; https://lawfilesext.leg.wa.gov/Law/WSR/2023/15/23-15-046.htm | 2026-11-23 | snippet | 10-ups-energy-storage.qmd § Energy storage chemistries; § Battery room installations | M |
| E17 | UL 9540A data required above 50 kWh per group, spacing <0.9 m (3 ft), or above NFPA 855 Table 9.4.1 max of 600 kWh Li-ion | 50 kWh; 0.9 m; 600 kWh | US | ZincFive blog Part 2 [VENDOR, NiZn UPS batteries] | https://zincfive.com/blog/ensuring-ess-safety-in-data-centers-with-nfpa-855-part-2/ | 2026-11-23 | snippet [VENDOR] | 10-ups-energy-storage.qmd § Battery room installations | M |
| E18 | AHJ may use UL 9540A report to waive limits above 50 kWh, or 250 kWh for listed pre-engineered systems | 50 / 250 kWh | US | Vertiv white paper [VENDOR] | https://prep.vertiv.com/490199/globalassets/documents/white-papers/vertiv-lib-and-fire-codes-wp-en-na-sl-70718-web_322437_0.pdf | 2026-11-23 | secondary [VENDOR] | 10-ups-energy-storage.qmd § Battery room installations | M |
| E19 | Professionals warn NFPA 855 broadened scope may change UPS practice and reach existing facilities | qualitative | US | Data Center Frontier | https://www.datacenterfrontier.com/energy/article/11429677/new-nfpa-battery-standard-could-impact-data-center-ups-designs | 2026-11-23 | secondary | 10-ups-energy-storage.qmd | M |
| E20 | NFPA 855 2026 edition reportedly requires large-scale fire testing alongside UL 9540A | qualitative | US | NFPA 855 A2025 First Draft PI responses | https://docinfofiles.nfpa.org/files/AboutTheCodes/855/855_A2025_ESS_AAA_FD_PIResponses.pdf | 2026-11-23 | snippet (secondary) | 10-ups-energy-storage.qmd | L |
| E21 | Microsoft/Eaton Dublin grid-interactive Li-ion UPS provides fast frequency response via Enel X in DS3; 12 ms grid tracking; announced 2022; capacity not disclosed | 12 ms | Ireland | Microsoft News; Energy-Storage.news; DCD | https://news.microsoft.com/source/features/sustainability/ireland-wind-farm-datacenter-ups/ ; https://www.datacenterdynamics.com/en/news/microsoft-teams-up-with-eaton-for-grid-interactive-ups-at-dublin-data-center | 2026-11-23 | primary-read (owner) / secondary | 10-ups-energy-storage.qmd § Static UPS systems | M |
| E22 | Baringa projection: ~2 Mt CO2 avoidable in 2025 if grid-interactive UPS replaced fossil grid services in IE/NI | ~2 Mt CO2 | Ireland | Baringa analysis cited by Microsoft | same Microsoft URL | 2026-11-23 | secondary (projection) | 10-ups-energy-storage.qmd | L |
| E23 | Jefferies estimate of data-centre gas turbines through 2030, as bridge to grid | 8-10 GW | US | S&P Global Market Intelligence, Oct 2025 | https://www.spglobal.com/market-intelligence/en/news-insights/articles/2025/10/data-center-developers-turn-to-distributed-behind-the-meter-power-94174247 | 2026-11-23 | secondary | 09-standby-generation-emergency-power.qmd § Diesel and gas-fired gensets | M |
| E24 | VoltaGrid 2.3 GW BTM gas for Oracle/Stargate, Texas; GE Vernova 29 aeroderivative turbines ~1 GW | 2.3 GW; ~1 GW | US | S&P Global, Oct 2025 | same as E23 | 2026-11-23 | secondary | 09-...emergency-power.qmd | M |
| E25 | Brookfield to invest in Bloom fuel cells at AI data centres | USD 5 B | US | S&P Global, Oct 2025 | same as E23 | 2026-11-23 | secondary | 09-...emergency-power.qmd | M |
| E26 | Bloom: fuel cells running within months vs 9-12 months for large turbines; sites stay on bridge assets longer than planned | months vs 9-12 months | US | Utility Dive sponsored [VENDOR] | https://www.utilitydive.com/spons/behind-the-meter-power-an-effective-tool-for-bringing-large-utility-custom/833709/ | 2026-11-23 | secondary [VENDOR, sponsored] | 09-...emergency-power.qmd | L |
| E27 | "Bridge power" label rejected: on-site generation becoming permanent | qualitative | US | Data Center Frontier, "Power First" | https://www.datacenterfrontier.com/energy/article/55403280/power-first-ai-data-centers-become-energy-systems | 2026-11-23 | secondary | 09-...emergency-power.qmd; 01-epc-delivery-fundamentals.qmd § Commercial risk allocation | M |
| E28 | Caterpillar promotes reciprocating-engine bridge power (not read) | n/a | Global | Cat white paper [VENDOR] | https://www.cat.com/en_GB/by-industry/electric-power/Articles/White-papers/bridge-power-solutions-for-data-centers.html | 2026-11-23 | UNVERIFIED [VENDOR, not read] | 09-...emergency-power.qmd | L |
| E29 | KSA procurement options: regulated grid, BTM, hybrid, renewable PPAs; most large loads gas-fired | qualitative | KSA | Greenberg Traurig, 5 Jan 2026 | https://www.gtlaw.com/en/insights/2026/1/saudi-arabias-data-centre-expansion-regulatory-framework-and-strategic-considerations | 2026-11-23 | secondary (law firm) | 01-epc-delivery-fundamentals.qmd § Commercial risk allocation; 08-hv-mv-power-distribution.qmd | M |
| E30 | Directive (EU) 2023/1791 adopted 13 Sep 2023, OJ L 231 20 Sep 2023, recasts 2012/27/EU; Recital 85 reporting (energy, water, flexibility, common template); Recital 86 covers cooling, lighting, batteries, UPS | n/a | EU | EUR-Lex, Directive (EU) 2023/1791 | https://eur-lex.europa.eu/eli/dir/2023/1791/oj/eng | 2026-11-23 | primary-read (recitals only; articles truncated) | 01-epc-delivery-fundamentals.qmd § Single-point design liability (PUE, WUE, CUE) | H |
| E31 | Art. 12 reporting for installed IT power demand of at least 500 kW | 500 kW | EU | Bird & Bird, 2024 | https://www.twobirds.com/en/insights/2024/germany/rechenzentren-und-abwaerme-ein-ueberblick-ueber-die-gesetzlichen-vorgaben-zur-abwaermenutzung | 2026-11-23 | secondary | 01-...fundamentals.qmd § PUE, WUE, CUE | M |
| E32 | Art. 26: data centres >1 MW total rated energy input must use waste heat unless not feasible; secondary sources conflict on "and"/"or" and on 26(6) vs 26(7) | 1 MW | EU | Travers Smith; Covington Apr 2025; Danfoss; ODYSSEE-MURE | https://www.traverssmith.com/knowledge/knowledge-container/too-big-to-ignore-regulating-the-data-centre-boom/ ; https://www.cov.com/-/media/files/corporate/publications/2025/04/the-eus-energy-efficiency-directive-and-its-impact-on-datacenters.pdf | 2026-11-23 | secondary (conflict open) | 05-central-chilled-water-plants-heat-rejection.qmd (new heat-reuse section) | M |
| E33 | Delegated Reg. (EU) 2024/1364 rating scheme, Annex VII KPIs incl. waste-heat utilisation; Recommendation (EU) 2024/2395 guidance on Art. 26; transposition due 11 Oct 2025 | dates | EU | EUR-Lex | https://eur-lex.europa.eu/eli/reg_del/2024/1364/oj ; https://eur-lex.europa.eu/eli/reco/2024/2395/oj/eng | 2026-11-23 | snippet | 01-...fundamentals.qmd; 17-bms-epms-dcim.qmd § DCIM (reporting) | M |
| E34 | EnEfG § 11: existing DCs PUE ≤1.5 from 1 Jul 2027, ≤1.3 from 1 Jul 2030; new DCs PUE ≤1.2 and ERF (DIN EN 50600-4-6) ≥10/15/20% for operation from 1 Jul 2026/2027/2028; annual averages within 2 years; heat-pump power excluded from PUE; renewable electricity 50% from 1 Jan 2024, 100% from 1 Jan 2027; exemptions tied to heat-network agreements | PUE 1.2; ERF 10/15/20 % | Germany | gesetze-im-internet.de, EnEfG § 11 | https://www.gesetze-im-internet.de/enefg/__11.html | 2026-11-23 | primary-read | 01-...fundamentals.qmd § PUE, WUE, CUE; 05-...heat-rejection.qmd; 17-bms-epms-dcim.qmd § DCIM | H |
| E35 | EnEfG data-centre duties apply from 300 kW non-redundant nominal connected load | 300 kW | Germany | TÜV; Gleiss Lutz | https://consulting.tuv.com/aktuelles/datacenter/enefg-im-rechenzentrum | 2026-11-23 | snippet (other section, not verified in § 11) | 01-...fundamentals.qmd | M |
| E36 | Draft amendment of 24 Jun 2026 keeps reuse minimums, relaxes PUE for existing sites | date | Germany | Gleiss Lutz | https://www.gleisslutz.com/en/know-how/data-centre-update-draft-bill-amend-energy-efficiency-act | 2026-11-23 | secondary | 01-...fundamentals.qmd | M |
| E37 | Meta Odense: district-heating water via DC cooling coils, ammonia heat pumps to 70-75 °C; ~45 MW heat; planned 215,000 MWh/yr; >12,000 homes; late 2019; Ramboll for Fjernvarme Fyn | 45 MW; 215,000 MWh/yr | Denmark | Ramboll project page | https://www.ramboll.com/projects/energy/meta-surplus-heat-to-district-heating | 2026-11-23 | primary-read (designer page) | 05-...heat-rejection.qmd (heat reuse) | M |
| E38 | Conflicting Odense figures | ~165,000 MWh; ~11,000 households | Denmark | TechRadar citing Fjernvarme Fyn, 2025 | https://www.techradar.com/pro/finally-some-good-usage-this-danish-data-center-is-providing-heat-to-power-thousands-of-household-radiators | 2026-11-23 | secondary (conflict) | 05-...heat-rejection.qmd | M |
| E39 | Air-cooled DC heat is low-grade, usually needs heat pumps | qualitative | Denmark | DTU | https://www.compute.dtu.dk/english/news/2022/11/five-answers-about-integrating-waste-heat-from-data-centres | 2026-11-23 | secondary | 05-...heat-rejection.qmd; 07-...cooling-systems.qmd | M |
| E40 | Prefabricated vs traditional, 440 kW: roughly equal capex, ~2% saving; assumption-sensitive | ~2 % | n/a | Schneider Electric White Paper 218 [VENDOR] | https://download.schneider-electric.com/doc/SPD_VAVR-9U4PPA_EN/WP218R0.pdf | 2026-11-23 | primary-read [VENDOR] | 02-equipment-demarcation-packaging-ofci-vs-cfci.qmd; 18-...procurement-strategy.qmd | M |
| E41 | Modular builds ~30% TCO saving; 6-9 months design sign-off to operation | 30 %; 6-9 months | n/a | Schneider modular page [VENDOR] | https://se.com/hk/en/work/solutions/for-business/data-centers-and-networks/modular | 2026-11-23 | primary-read [VENDOR] | 18-...procurement-strategy.qmd | L |
| E42 | eHouse/skid prefabrication up to 30% better lead time, ~50% with pre-designed solutions | 30 % / 50 % | n/a | ABB brochure [VENDOR] | https://library.e.abb.com/public/32c6aaf0740d4a2f927fc712518d9400/Modular%20prefabricated%20solutions%20speed%20DC%20deployment_Brochure_Final.pdf | 2026-11-23 | primary-read [VENDOR] | 18-...procurement-strategy.qmd § Lead-time risk | L |
| E43 | Compass campus: on-site installation per prefabricated pod 75.5 h to 15 h | -80 % | US | Data Center Frontier sponsored [VENDOR] | https://www.datacenterfrontier.com/sponsored/article/55416347/the-case-for-prefabricated-power-in-ai-data-centers | 2026-11-23 | secondary [VENDOR, sponsored] | 18-...procurement-strategy.qmd | L |
| E44 | Vertiv PowerNexus and Flex prefabricated power modules (not read) | n/a | n/a | Vertiv brochure; Flex ebook [VENDOR] | https://www.vertiv.com/4ad7ce/globalassets/products/facilities-enclosures-and-racks/integrated-solutions/vertiv-powernexus/vertiv-prefabricated-power-solutions-brochure.pdf | 2026-11-23 | UNVERIFIED [VENDOR, not read] | 18-...procurement-strategy.qmd | L |
| E45 | RICS WLCA 2nd ed.: manufacturer-specific vs sector-average vs generic data; mandatory stage/data-quality contingency; aligned with ICMS 3; UK-based assumptions need localising | qualitative | Global | RICS WLCA PDF; RICS news | https://www.rics.org/content/dam/ricsglobal/documents/standards/Whole_life_carbon_assessment_PS_Sept23.pdf | 2026-11-23 | primary-read | 03-...benchmarking.qmd § Value engineering; 04-digital-takeoff-5d-bim-automated-measurement.qmd | H |
| E46 | OCP Foundation and iMasons Climate Accord Embodied Carbon Disclosure base specification, Oct 2025, MEP and IT equipment | Oct 2025 | Global | OCP blog | https://www.opencompute.org/blog/open-compute-project-foundation-and-imasons-develop-taxonomy-for-carbon-disclosure | 2026-11-23 | snippet | 18-...procurement-strategy.qmd § RFQs and compliance matrices | M |
| E47 | iMasons: embodied carbon harder than operational energy, no universal labelling; AWS/Google/Meta urge suppliers to publish EPDs | qualitative | Global | DCD; Supply Chain Dive 2024 | https://datacenterdynamics.com/en/news/imasons-proposes-work-on-data-centers-embodied-carbon ; https://www.supplychaindive.com/news/climate-suppliers-issue-epds-scope-3-ghg-data-centers-aws-google-meta/721699/ | 2026-11-23 | secondary | 18-...procurement-strategy.qmd | M |
| E48 | Schneider to share third-party-audited Product Environmental Profiles with ICA signatories | qualitative | Global | Schneider press release [VENDOR] | https://se.com/ww/en/about-us/newsroom/news/press-releases/schneider-electric-furthers-its-commitment-to-infrastructure-mason’s-climate-accord-accelerating-advances-in-data-center-sustainability-63638d4c2accfe67a903d787 | 2026-11-23 | primary-read [VENDOR] | 18-...procurement-strategy.qmd | L |
| E49 | KSA national data-centre strategy (MCIT with SDAIA, 2025) targets ~1.5 GW by 2030; SERA and MoE set connection, allocation, tariff, reliability rules; pricing project by project | ~1.5 GW by 2030 | KSA | Greenberg Traurig, 5 Jan 2026 | same as E29 | 2026-11-23 | secondary (law firm) | 01-...fundamentals.qmd § Commercial risk allocation; 08-hv-mv-power-distribution.qmd § Utility interconnection | M |
| E50 | KSA water policy: high-efficiency or closed-loop cooling where feasible, groundwater limits, real-time water/energy monitoring | qualitative | KSA | Greenberg Traurig | same as E29 | 2026-11-23 | secondary | 05-...heat-rejection.qmd; 15-mission-critical-plumbing-drainage-environmental-protection.qmd § Water treatment | M |
| E51 | MCIT AI service catalogue: incentives allocated deal by deal; competitive industrial tariffs; water-supply help | qualitative | KSA | MCIT, AI Service Catalog 2026 (PDF, Aug 2026) | https://www.mcit.gov.sa/sites/default/files/2026-08/AI%20Service%20Catalog%20MCIT%202026.pdf | 2026-11-23 | primary-read (not flagged snippet in notes) | 03-...benchmarking.qmd § Establishing the cost baseline (incentive case) | M |
| E52 | Cloud Computing SEZ offers tax, regulatory, power, network benefits | qualitative | KSA | Separate analysis (unnamed) | (none) | 2026-11-23 | snippet | 03-...benchmarking.qmd | L |
| E53 | NIF/Humain financing up to SAR 2.5 bn (~USD 667 M); earlier framework up to SAR 4.5 bn for up to 250 MW (Jan 2026); National Grid SA electricity agreement for Humain Riyadh, Sept 2026, terms undisclosed | SAR 2.5 bn; 250 MW | KSA | Capacity; Sabq; vision2030.ai | https://capacityglobal.com/news/sar-2-5bn-infra-humain-ai-deal-why-build-for-1gw-when-funding-25mw/ ; https://sabq.org/en/article/9amwyyq ; https://vision2030.ai/analysis/saudi-ai-data-centre-power-agreements-september-2026/ | 2026-11-23 | snippet | 01-...fundamentals.qmd (market context) | L |
| E54 | KAPSARC: utilisation and hardware efficiency affect AI DC project cost more than electricity tariffs | qualitative | KSA | KAPSARC discussion paper DP00503 | https://www.kapsarc.org/media/osyfiocu/dp00503-v1.html | 2026-11-23 | snippet | 03-...benchmarking.qmd § Value engineering | L |
| E55 | Saudi DC water use ~15 bn L (2024); another projection ~20 bn L (2025) rising to ~88 bn L by 2030 (~4% of national water output); preliminary | 15 / 20 / 88 bn L | KSA | Arab News; Enterprise AM 19 Nov 2026 | https://www.arabnews.pk/node/2598372 ; https://enterpriseam.com/ai/2026/11/19/water-not-chips-or-capital-may-be-the-biggest-barrier-to-the-gulfs-ai-ambitions/ | 2026-11-23 | snippet (conflict) | 15-...environmental-protection.qmd § Water treatment; 05-...heat-rejection.qmd | L |
| E56 | Cooling-method conflict: most Saudi DCs hybrid (Arab News) vs hyperscale mainly water-intensive air cooling (Enterprise AM); evaporative raises water use 5-10x; dry/hybrid WUE typically <0.2 L/kWh expected | 5-10x; <0.2 L/kWh | GCC | Arab News; Enterprise AM; Computer Weekly | https://www.arabnews.pk/node/2612606 ; https://enterpriseam.com/logistics/2025/12/24/saudi-poised-to-lead-the-gulfs-data-center-boom/ ; https://www.computerweekly.com/news/366640511/Designing-watersmart-AI-datacentres-in-GCC-and-MENA | 2026-11-23 | secondary (conflict) | 05-...heat-rejection.qmd § Heat rejection infrastructure | M |
| E57 | Humain 100 MW data centres in Riyadh and Dammam expected to operate in 2026 | 100 MW | KSA | Computer Weekly | same Computer Weekly URL | 2026-11-23 | secondary | 01-...fundamentals.qmd (context) | M |
| E58 | DEWA connection cost by total connected load in 14 slabs regardless of route; MPG Jun 2021 requires general vs cooling load split and peak demand; very large loads may need 400/132 kV source; D33 companies 25% discount | 14 slabs; 25 % | UAE (Dubai) | DEWA calculator; DEWA Major Project Guidelines (Electricity), Jun 2021 | https://dewa.gov.ae/en/builder/electricity-network-services/electricity-connection-cost-calculator ; https://www.dewa.gov.ae/-/media/Files/Suppliers-and-Partners/Major-Project-Guidelines--Electricity--Jun-2021.ashx | 2026-11-23 | primary-read | 08-hv-mv-power-distribution.qmd § Utility interconnection; 03-...benchmarking.qmd | H |
| E59 | UAE Civil Defence-approved clean-agent systems typically designed to NFPA 2001 (supplier claim, not code); DM 2022 UAE Fire Code circular concerns insulation materials | qualitative | UAE | Supplier claim; Dubai Municipality circular 2022 | https://www.dm.gov.ae/wp-content/uploads/2022/05/DM-DCLD-RD-DP32-5119-Type-1-UAE-Fire-Code-R2.pdf | 2026-11-23 | secondary [VENDOR claim] | 13-fire-suppression-for-white-space.qmd § Clean agent | L |
| E60 | FSSA/FIA research on effect of high airflow and aisle containment on clean-agent performance in data centres | qualitative | UK / intl | FIA / FSSA research PDF | https://www.fia.uk.com/static/a9985492-a240-43c9-a73a38f39d00f51d/c2bf2f32-61cd-44d9-b5c9b3baab77a545/Effect%20of%20High%20Airflow%20and%20Aisle%20Containment%20on%20Clean%20Agent%20System%20Performance%20in%20Data%20Centers.%20%20Research%20by%20FSSA%20&%20FIAA.pdf | 2026-11-23 | primary (located) | 13-fire-suppression-for-white-space.qmd § Room integrity testing; 06-air-handling-containment-white-space-cooling.qmd § Aisle containment | M |

## D. Thin-chapter technical and contractual facts (T)

| ID | Claim (paraphrased) | Value & unit | Region | Source (publisher, title, edition/date) | URL | Accessed | Verification | Target chapter file & section | Confidence |
|---|---|---|---|---|---|---|---|---|---|
| T01 | EN 54-20 Class A very high sensitivity (server rooms, high airflow); B enhanced (high ceilings); C normal (approx. point detector) | classes | EU | Eurofyre; IFSEC Global | https://eurofyre.co.uk/?p=4063 ; https://www.ifsecglobal.com/uncategorized/aspirating-smoke-detection/ | 2026-11-23 | secondary [VENDOR: Eurofyre] | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| T02 | Classes A and B use new smaller test fires; C uses EN 54-7 test fires | qualitative | EU | Eurofyre | https://eurofyre.co.uk/?p=4063 | 2026-11-23 | secondary | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| T03 | Class applies to installed system; dilution by hole count; example detector Class A at 16 holes (~0.04 %obs/m), Class C at 72 holes (~0.10 %obs/m) | 16 / 72 holes | n/a | Xtralis document [VENDOR]; Eurofyre | https://xtralis.com/file/539 | 2026-11-23 | secondary [VENDOR] | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| T04 | A revised prEN 54-20 draft exists that would supersede 2006 (conflicts with S05: no published successor) | qualitative | EU | iTeh standards catalogue | https://standards.iteh.ai/catalog/standards/cen/f12658f9-968f-4bf7-b9b4-b1b88675de55/pren-54-20 | 2026-11-23 | secondary (conflict with S05) | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| T05 | NFPA 72 max transport time from most remote port; NFPA 76 2005/2009 editions 90 s | 120 s; 90 s | US | Eng-Tips forum thread; Honeywell FAAST fire codes PDF [VENDOR] | https://eng-tips.com/threads/air-sampling-systems-transport-time.244198 ; https://www.honeywellanalytics.com/~/media/honeywell-analytics/products/faast/documents/fire-codes.pdf?la=en | 2026-11-23 | secondary (forum; verify vs current eds.) | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T06 | Citing NFPA 76: VEWFD transport <60 s, EWFD <90 s, with per-hole sensitivity/coverage limits | 60 s; 90 s | US | ASD Application Guide ASAG442 (Scribd) [REVIEW-SOURCE] | https://es.scribd.com/document/293776346/AspiratingSmokeDetectors-AppGuide-ASAG442 | 2026-11-23 | secondary [REVIEW-SOURCE] | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T07 | NFPA 76 return-air sampling: one port per 4 ft2 (~0.37 m2) of return grille; annual transport-time test from most remote port | 4 ft2/port | US | ORR Protection [VENDOR, installer] | https://www.orrprotection.com/mcfp/air-sampling-smoke-detection-system | 2026-11-23 | secondary [VENDOR] | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T08 | UL 268 7th ed. listings carry application-specific max transport times, e.g. 49 s open areas, 90 s special applications | 49 s; 90 s | US | Xtralis document [VENDOR] | https://xtralis.com/file/12041 | 2026-11-23 | secondary [VENDOR] | 14-fire-detection-vesda.qmd § ASD/VESDA | M |
| T09 | Commonly quoted VEWFD max 200 ft2 per port and 0.2 %obs/ft alarm | 200 ft2; 0.2 %obs/ft | US | (none; gap in notes) | (none) | 2026-11-23 | UNVERIFIED | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T10 | ASD sampling pipe typically ABS or uPVC, 25 mm OD | 25 mm | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T11 | Typical two-level data-hall layout: Class A at return-air paths for VEWFD plus ceiling/room sampling | qualitative | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 14-fire-detection-vesda.qmd § ASD/VESDA | L |
| T12 | Leak detection tape/cable around hall, along rack tops over drip trays, under raised floor; nuisance alarms and maintenance drawbacks | qualitative | n/a | DatacenterDynamics, "Data center water leaks" | https://datacenterdynamics.com/en/analysis/data-center-water-leaks | 2026-11-23 | secondary | 15-mission-critical-plumbing-drainage-environmental-protection.qmd § Leak detection | M |
| T13 | Sensing-cable runs up to 100 ft (~30 m) per zone; cable dries and resets; two-channel systems for glycol, condenser, chilled water, drip pans | 100 ft/zone | n/a | Vertiv, "Leak detection systems" [VENDOR] | https://www.vertiv.com/en-us/about/news-and-events/articles/product-class-articles/leak-detection-systems/ | 2026-11-23 | secondary [VENDOR] | 15-...environmental-protection.qmd § Leak detection | M |
| T14 | OCP ACS white paper on cold-plate leak detection and intervention: CDUs, manifolds, QDs, designing out leaks, nuisance alarms, auto isolation by solenoid valve or CDU shutdown | qualitative | Global | OCP, Cold Plate Leak Detection and Intervention white paper | https://opencompute.org/documents/acs-cold-plate-leak-detection-and-intervention-white-paper-pdf-1 | 2026-11-23 | secondary (located; not fully read) | 15-...environmental-protection.qmd § Leak detection; 07-liquid-cooling-technology-cooling-systems.qmd § DTC CDUs | M |
| T15 | Containment tray under secondary manifold with concentric two-wire leak cable | qualitative | US | USPTO patent 12690165 | https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/12690165 | 2026-11-23 | primary (patent) | 15-...environmental-protection.qmd § Leak detection | M |
| T16 | Do not route liquid pipework over electrical rooms needing drip trays; re-route early | qualitative | n/a | DCD, "The leak detectives" | https://datacenterdynamics.com/en/marketwatch/the-leak-detectives | 2026-11-23 | secondary | 15-...environmental-protection.qmd § Critical drainage; 04-digital-takeoff-5d-bim-automated-measurement.qmd § Clash detection | M |
| T17 | ASHRAE TC 9.9 Technical Bulletin "TCS Coolant Integrity and System Readiness Best Practices" (companion to 2024 "Liquid Cooling: Resiliency Guidance for Cold Plate Deployments"): lab-verify coolant at first fill and at intervals (undated) | qualitative | Intl | StorageReview on ASHRAE TC 9.9 | https://www.storagereview.com/news/ashrae-tc-9-9-flags-four-ways-direct-to-chip-cooling-loops-go-wrong | 2026-11-23 | secondary | 07-...cooling-systems.qmd § Secondary loop treatment; 15-...environmental-protection.qmd | M |
| T18 | ASHRAE: monitor coolant quality and filtration; poor quality lowers efficiency | qualitative | Intl | DCD, "ASHRAE publishes liquid cooling guidelines" | https://www.datacenterdynamics.com/en/news/ashrae-publishes-liquid-cooling-guidelines-as-chip-power-moves-into-uncharted-territory/ | 2026-11-23 | secondary | 07-...cooling-systems.qmd § Secondary loop treatment | M |
| T19 | ASHRAE Liquid Cooling Guidelines 2nd ed. (2014) include water-quality and wetted-material guidance | 2014 | Intl | FMLink | https://www.fmlink.com/ashraes-updated-guidance-on-cooling-data-centers-adds-supply-water-temperature-classification/ | 2026-11-23 | secondary | 07-...cooling-systems.qmd § Secondary loop treatment | M |
| T20 | ASHRAE TC 9.9 white paper "Emergence and Expansion of Liquid Cooling in Mainstream Data Centers" (2021), little water chemistry | 2021 | Intl | ASHRAE PDF | https://www.ashrae.org/File%20Library/Technical%20Resources/Bookstore/Emergence-and-Expansion-of-Liquid-Cooling-in-Mainstream-Data-Centers_WP.pdf | 2026-11-23 | primary-read | 07-...cooling-systems.qmd overview | M |
| T21 | TCS side-stream filtration typically 25-50 micron at the CDU | 25-50 µm | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 07-...cooling-systems.qmd § Secondary loop treatment | L |
| T22 | TIA-942-C keeps four rating levels; Rated-3 concurrently maintainable, Rated-4 fault tolerant | 4 levels | Intl | Belden blog [VENDOR] | https://www.belden.com/blog/introducing-ansi-tia-942-c-recent-updates-to-data-center-standards | 2026-11-23 | secondary [VENDOR] | 16-elv-security-access-control.qmd § Structured cabling; 03-...benchmarking.qmd § Uptime Tier | M |
| T23 | Annex D rating tables normative, "Required/Not Required"; UPS, battery, fire, seismic requirements simplified; annexes renumbered | qualitative | Intl | The Network Installers blog (single vendor article) | https://thenetworkinstallers.com/blog/ansi-tia-942-c-standard/ | 2026-11-23 | secondary [VENDOR] (verify) | 16-elv-security-access-control.qmd § Structured cabling | M |
| T24 | Edge content folded in; recommended min. 2 fibers horizontal backbone; floor loading; min. cabinet width | 2 fibers | Intl | Data Center Frontier; ISE Magazine | https://www.datacenterfrontier.com/design/article/33037194/c-revision-of-tia-942-data-center-standard-specifies-for-fiber-connectivity-cabinet-widths ; https://www.isemag.com/cande-netdev-ops-gis-open-source-networks/data-centers/article/55284487/tia-942-c-data-center-standard-brings-a-host-of-changes-and-updates | 2026-11-23 | secondary | 16-elv-security-access-control.qmd § Structured cabling | M |
| T25 | TIA started Addendum 1 (AI) to TIA-942-C; over 100 data centres certified | >100 | Global | TIA product page; CI&M | https://tiaonline.org/products/tia-942/ ; https://cablinginstall.com/standards/press-release/55278043/100-data-centers-certified-to-tia-942-c | 2026-11-23 | primary-read / secondary | 16-elv-security-access-control.qmd | M |
| T26 | Rated-1 basic, Rated-2 redundant components | definitions | Intl | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 16-elv-security-access-control.qmd | L |
| T27 | Shared precise time reference needed for correlating meter data; IEEE C37.238 PTP power profile; some profiles need PTP-aware switches (c. 2017) | qualitative | n/a | Trystar/Cyber Sciences EPMS presentation [VENDOR] | https://trystar.com/wp-content/uploads/PP-PTP-01_EPMS-HD_presentation.pdf | 2026-11-23 | secondary [VENDOR] | 17-bms-epms-dcim.qmd § EPMS | M |
| T28 | EPMS time-stamps events to ms; typical BMS responds in 5-60 s; single integrated BMS/EPMS UI recommended | ms vs 5-60 s | n/a | Siemens Data Centers reference architecture PDF; Siemens BMS-EPMS page [VENDOR] | https://assets.new.siemens.com/siemens/assets/api/uuid:85039708-2b45-4081-bffb-3bc09af0b642/Data-Centers-RefArch-Single-UI-BMSEPMS_original.pdf ; https://www.siemens.com/en-us/industries/data-centers/bms-epms-integration/ | 2026-11-23 | primary-read [VENDOR] | 17-bms-epms-dcim.qmd § EPMS | M |
| T29 | PQ instruments at grid infeed, ATS, UPS, distribution, cooling, racks; EN 50160 and IEC 61000 reporting; IEC 61850 and Modbus TCP protocols | qualitative | n/a | Siemens, Improve power quality [VENDOR] | https://www.siemens.com/en-us/industries/data-centers/improve-power-quality/ | 2026-11-23 | primary-read [VENDOR] | 17-bms-epms-dcim.qmd § EPMS | M |
| T30 | EPMS metering tiers (Class A PQ at incomers/MV, advanced meters, basic MFMs, BCM, intelligent rack PDUs) | tiering | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 17-bms-epms-dcim.qmd § EPMS | L |
| T31 | IEC 62443 cost effects (zones/conduits, SL1-SL3, OT firewalls, pen-test) | qualitative | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 17-bms-epms-dcim.qmd § DDC hardware | L |
| T32 | No published points-per-MW or points-per-device norm found | negative finding | n/a | Notes gap | (none) | 2026-11-23 | (negative finding) | 17-bms-epms-dcim.qmd § I/O point quantification | M |
| T33 | SCL 2nd ed.: no preferred method after the event; selection factors (contract, circumstances, events, claim, value, time, records, proportionality); 1st-ed. TIA preference dropped; windows added | qualitative | UK / intl | Fenwick Elliott, "SCL Protocol: a second edition" | https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition | 2026-11-23 | secondary (law firm) | 19-variation-governance-change-control-claims.qmd § TIA and EOT | H |
| T34 | Protocol summarises six common methods; prefers prompt contemporaneous evaluation | 6 methods | UK / intl | CMS; Mosaic Projects P216 | https://cms.law/en/gbr/legal-updates/scl-delay-and-disruption-protocol-scl-promotes-common-sense-approach-to-dark-art-of-delay-analysis ; https://mail.mosaicprojects.com.au/PDF_Papers/P216_Assessing_Delay_The_SCL_Options.pdf | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T35 | Core Principle 1: agree and resource records (Appendix B, jointly signed); Core Principle 4: EOT applied and decided close to event | qualitative | UK / intl | Fenwick Elliott | same as T33 | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T36 | Concurrency: Employer and Contractor Risk Events both effective causes of critical delay at same time; true concurrency rare; contractor delay should not reduce EOT | qualitative | UK / intl | Fenwick Elliott; Building | same as T33 ; https://www.building.co.uk/communities/scl-delay-and-disruption-protocol-take-two/5082412.article | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T37 | Float: EOT only to extent delay extends completion after available float used; needs updated CPM programme | qualitative | UK / intl | Mosaic Projects P216; Keane & Caletka excerpt | same Mosaic URL ; https://res.cloudinary.com/dun3slcfg/image/upload/v1705068774/cloud-files/Delay-Analysis-in-Construction-Contracts.pdf | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T38 | Global claims discouraged; Santos v Fluor (Qld CA, 2017) accepted measured mile with reference to 2nd ed. | 2017 | Australia / UK | Fenwick Elliott | same as T33 | 2026-11-23 | secondary | 19-...claims.qmd § Evaluating contractor-asserted variations | H |
| T39 | Protocol binds only if adopted; used as benchmark by courts and tribunals | qualitative | UK / intl | Fenwick Elliott | same as T33 | 2026-11-23 | secondary | 19-...claims.qmd | H |
| T40 | AACE RP 29R-03 (rev. 2011): observational (static/dynamic) and modeled (additive/subtractive); nine MIPs; does not rank | 9 MIPs | Intl | AACE 29R-03 ToC PDF; Planning Planet copy; HKA | https://web.aacei.org/docs/default-source/toc/toc_29r-03.pdf?sfvrsn=4 ; https://www.hka.com/article/forensic-delay-analysis-methodologies/ | 2026-11-23 | primary-read (ToC) / secondary | 19-...claims.qmd § TIA and EOT | H |
| T41 | Critic: equal footing for modeled additive methods misguided (one commentator) | opinion | US | ENR, "Forensic scheduling's groundhog day" | https://enr.com/articles/56770-forensic-schedulings-groundhog-day-dubious-practices-recommended-again | 2026-11-23 | secondary (opinion) | 19-...claims.qmd | L |
| T42 | Mapping of six SCL methods to AACE MIPs (table in notes) | mapping | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 19-...claims.qmd § TIA and EOT | L |
| T43 | Concurrent delay "time but no money" English practice | qualitative | UK | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 19-...claims.qmd | L |
| T44 | FIDIC 2017 8.3 programme: logically linked, inspection/test timing, key dates, float, rest days, deliveries, method statement; update when not reflecting progress | qualitative | Intl | Fenwick Elliott, "How the 2017 FIDIC contract deals with time" | https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time | 2026-11-23 | secondary (law firm) | 19-...claims.qmd § TIA and EOT | H |
| T45 | 8.4 Advance warning tightened to "shall", no sanction (unlike NEC) | qualitative | Intl | Fenwick Elliott | same as T44 | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT (heading fix) | H |
| T46 | 8.5 EOT on defined grounds with a "Notice"; programmes do not count; determination under 3.7 (3.5 Silver, Employer's Representative); concurrency to Special Provisions; Walter Lilly full EOT vs City Inn apportion; civil law apportions | qualitative | Intl / UK | Fenwick Elliott | same as T44 | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T47 | 8.8 Delay Damages daily rate per Contract Data to Taking-Over date; cap % of final Contract Price; enforceability by law (Cavendish; UAE judicial adjustment); Employer must give Notice of Claim | qualitative | Intl / UK / UAE | Fenwick Elliott (+ PDF) | same as T44 ; https://www.fenwickelliott.com/sites/default/files/jg_-_how_the_2017_fidic_contract_deals_with_time.pdf | 2026-11-23 | secondary | 19-...claims.qmd § Quantifying delay LDs | H |
| T48 | Silver Book 2017 numbering: 8.5 EOT, 8.7 Rate of Progress, 8.8 Delay Damages, 8.9 Employer's Suspension | clause nos. | Intl | Emerald companion preview PDF | https://bookstore.emerald.com/media/preview/9781836081814-23-2.pdf | 2026-11-23 | secondary (book preview) | 19-...claims.qmd § TIA and EOT; § Quantifying delay LDs | H |
| T49 | 20.1/20.2: Notice of Claim within 28 days of awareness (to other Party in Silver Book); fully detailed Claim within 84 days, monthly updates; Notice lapses if basis not stated in 84 days; 14 days to object to late Notice; 1999: 42 days | 28 / 84 / 14 / 42 days | Intl | CMS; Fenwick Elliott; ICC blog | https://cms.law/en/gbr/legal-updates/new-fidic-second-editions-revamped-claims-and-dispute-resolution-provisions ; https://iccwbo.org/news-publications/guests-blog-speeches/guest-blog-its-easy-when-you-know-how-an-explanation-of-the-ins-and-outs-of-claims-under-fidic-2017/ | 2026-11-23 | secondary | 19-...claims.qmd § TIA and EOT | H |
| T50 | 20.2.5: time bar can be waived considering prejudice and prior knowledge; programme updates evidence knowledge | qualitative | Intl | Fenwick Elliott | same as T44 | 2026-11-23 | secondary | 19-...claims.qmd | H |
| T51 | 2017 edition refined the delay damages cap | qualitative | Intl | IBA, "FIDIC commentaries", Jan 2019 | https://www.ibanet.org/article/22569010-dd6b-460c-9ee7-f3f33c2b7f06 | 2026-11-23 | secondary | 19-...claims.qmd § Quantifying delay LDs | M |
| T52 | Clauses 9 Tests on Completion, 10.1 TOC within 28 days, 11 DNP default 365 days extendable to 2 years (11.3), 12 Tests after Completion performance damages, 1.14 liability cap | 28 days; 365 days; 2 yrs | Intl | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 22-handover-final-accounts-operational-transition.qmd § DNP; 19-...claims.qmd § Quantifying performance LDs; 21-temporary-commissioning-infrastructure-power-utilities.qmd § Rework allowances | L |
| T53 | Five-level Cx model: L1 factory witness/FAT; L2 delivery and installation; L3 pre-functional incl. load-bank burn-in and thermal imaging; L4 system FPT; L5 IST at full load with staged failures and utility failure simulation | 5 levels | Global | Aggreko pages [VENDOR, load-bank supplier] | https://www.aggreko.com/en-us/resources/data-centers/load-bank-testing-and-commissioning-key-to-data-center-performance | 2026-11-23 | secondary [VENDOR] | 20-the-five-level-commissioning-commercial-framework.qmd § Levels 1-5 | M |
| T54 | Resistive and reactive load banks prove generators and UPS at 100% load, leading and lagging PF; L5 includes electrical IST, load-bank and heat load testing | 100 % load | Global | Aggreko whitepaper AGK5006-1, Apr 2020 [VENDOR] | https://bynder.aggreko.com/m/34acbfd3f0f96433/original/AGK5006-1_loadbank-and-commissioning-for-data-centres_whitepaper_global_Apr2020-pdf.pdf | 2026-11-23 | secondary [VENDOR] | 21-temporary-commissioning-infrastructure-power-utilities.qmd § Load bank procurement | M |
| T55 | Alternative frameworks: NEBB-aligned Level 0-6 with 2A/2B; IPS whole-building five-level | qualitative | US | IFMA FMJ; IPS | https://fmj.ifma.org/beyond-traditional-nebb ; https://www.ipsdb.com/happenings/insights/commissioning-data-centers | 2026-11-23 | secondary | 20-...framework.qmd § Commissioning cost dynamics | M |
| T56 | ASHRAE G0 / BCxA tied to Levels 1-5 | qualitative | n/a | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 20-...framework.qmd | L |
| T57 | BS EN ISO 19650-4 recorded as superseding BS 1192-4, but IHS record shows withdrawn/unavailable status (inconsistent) | status | UK | IHS/Accuris record | https://cis.ihs.com/CIS/document/337690 | 2026-11-23 | secondary (conflict) | 22-handover-final-accounts-operational-transition.qmd § As-Built and COBie | M |
| T58 | UK National Annex to BS EN ISO 19650-4 on COBie in development | qualitative | UK | Designing Buildings, COBie | https://www.designingbuildings.co.uk/wiki/COBie | 2026-11-23 | secondary | 22-...transition.qmd § As-Built and COBie | M |
| T59 | COBie still relevant under ISO 19650 though PAS 1192-2 withdrawn | qualitative | UK | Construction Management | https://constructionmanagement.co.uk/cobie-not-dead-introduction-19650/ | 2026-11-23 | secondary | 22-...transition.qmd § As-Built and COBie | M |
| T60 | COBie is non-geometric asset-data subset; staged data drops validated at milestones; AIM defined by client AIR | qualitative | UK | Designing Buildings; UK BIM Alliance guide via BEAMA; Pitt et al. (UCL) | https://www.designingbuildings.co.uk/wiki/Construction_Operations_Building_Information_Exchange ; https://www.beama.org.uk/static/98bf5d8b-1fb8-4954-8c066266bdfd9ead/UK-BIM-Alliance-Guide-to-what-data-is-required-for-BIM-level-2.pdf ; https://discovery.ucl.ac.uk/10050970/1/Pitt%20COBie_Management_Paper.pdf | 2026-11-23 | secondary | 22-...transition.qmd § As-Built and COBie; 04-digital-takeoff-5d-bim-automated-measurement.qmd | M |
| T61 | ISO 19650 terminology OIR/AIR/EIR, PIM to AIM, Part 3 operational phase, Part 4 information exchange | terms | Intl | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 22-...transition.qmd; 04-...measurement.qmd | L |
| T62 | Legacy UK data drops DD1-DD5 under PAS 1192-2, now superseded by project-specific milestones | DD1-DD5 | UK | Researcher background | (none) | 2026-11-23 | UNVERIFIED (background) | 22-...transition.qmd | L |

## Chapter-by-chapter map

Each line below lists the finding IDs that feed a section. Image IDs
(I01-I42, A01-A21) refer to `wip/research/image-register.md`. "Fix"
means an existing passage that the findings show to be wrong or out of
date; the full list of those is in the Open questions section further
down.

### Volume 1

**Ch 1 — volume-1/01-epc-delivery-fundamentals.qmd**

- Intro paragraph: replace the "USD 9,000/min" claim with M49 and
  M53, and add M44-M48 and M51. *Fix.*
- § Structural economics: M16, M26. There is still no sourced
  mechanical/electrical split.
- § Contractual frameworks: S19, S30.
- § PUE, WUE, CUE: E30, E31, E33, E34, E35, E36.
- § Commercial risk allocation: E27, E29, E49, E53, E57.
- Images: I41, I42, A17.

**Ch 2 — volume-1/02-equipment-demarcation-packaging-ofci-vs-cfci.qmd**

- § Procurement matrix and § RACI: E14 (sidecar input terminals) and
  E12. Also E08 (immersion first fill as OFCI or CFCI).
- § Boundary definitions and § FAT travel: E40, and S21 (Incoterms,
  UNVERIFIED).

**Ch 3 — volume-1/03-pre-contract-cost-planning-estimating-benchmarking.qmd**

- § Establishing the cost baseline: M01, M03-M15, M17, M18, M20-M25,
  M57, E51, E58, S26, S27, S33.
  - Build a table that states each source's scope.
  - Test the existing USD 7.5-12.5M/MW range against these sources.
- § Uptime Tier / BICSI: T22.
- § High-density AI/HPC economics: M02, M19, M27, M28, M30 (label it
  as the author's calculation), E04.
- § WBS/CBS: S31 (UNVERIFIED).
- § Value engineering: S25, E45, E54.
- Images: I41.

**Ch 4 — volume-1/04-digital-takeoff-5d-bim-automated-measurement.qmd**

- § BIM LOD: S22, S23, T60, T61.
- § Clash detection: T16.
- § Model quantities reused for carbon assessment: E45.

### Volume 2

**Ch 5 — volume-2/05-central-chilled-water-plants-heat-rejection.qmd**

- § Heat rejection: E56, E50, E55.
- New sub-section on heat reuse: E32, E34, E37, E38, E39.
- Images: I21, I22, I23, I24, I25.

**Ch 6 — volume-2/06-air-handling-containment-white-space-cooling.qmd**

- § Aisle containment: E60.
- Images: I26, I27, I28, I29, A06, A07, A08, A09, A16, A21.

**Ch 7 — volume-2/07-liquid-cooling-technology-cooling-systems.qmd**

- § DTC CDUs: T14.
- § RDHx and Immersion: E01, E02, E03, E06, E07, E08, E09, S17 (the
  new immersion annex).
- § Secondary loop treatment: T17, T18, T19, T21.
- Overview: E05, T20, E39 (warm liquid return makes heat reuse
  easier).
- Images: I30, I31, I32 (doubtful licence), A10, A11.

### Volume 3

**Ch 8 — volume-3/08-hv-mv-power-distribution.qmd**

- § Utility interconnection: E58, E49, E29, M43.
- § MV switchgear: S10, S11, M39, M40.
- § Transformers: M31-M36, M26.
- Images: I01, I02, I03, I04, A01, A20.

**Ch 9 — volume-3/09-standby-generation-emergency-power.qmd**

- § Gensets: M37, M38, E23-E28.
- § Fuel storage: no new findings; image I19.
- Images: I06, I15, I16, I17, I18, I19, I22, A19.

**Ch 10 — volume-3/10-ups-energy-storage.qmd**

- § Static UPS: S12, M41, E21, E22.
- § Rotary UPS: M41.
- § Energy storage chemistries: S15, S16, S32, E16, E19, E20.
- § Battery room: S14 (replace EN 50272-2, *Fix*), E17, E18.
- Overview: M53.
- Images: I09-I14, A04, A05, A18.

**Ch 11 — volume-3/11-lv-distribution-white-space-power-delivery.qmd**

- Overview: S08, M52.
- § MLVS/PDUs: S07, E11, E12.
- § Busway: E10, E11, E13, E14, E15.
- § Pathway segregation: S06.
- § Tray sizing: S09.
- Images: I05, I07, I08, I33, I34, A02, A03, A14, A15.

**Ch 12 — volume-3/12-earthing-bonding-lightning-protection.qmd**

- § MCBN: S18 (replace 607-D, *Fix*).
- § Structural lightning protection: S13 (re-cite away from
  rics2021nrm2, *Fix*).
- Images: I39, I40, A13.

### Volume 4

**Ch 13 — volume-4/13-fire-suppression-for-white-space.qmd**

- § Clean agent: S01, S04, E59.
- § Room integrity: S01 (hold time; re-cite away from nfpa75,
  *Fix*), E60.
- Images: I35, I36, I37, A12 (FM-200 controls), I08 (firestop).

**Ch 14 — volume-4/14-fire-detection-vesda.qmd**

- § ASD/VESDA: S03, S05, T01-T11.
- § FACP: S02.
- Image: I38.

**Ch 15 — volume-4/15-mission-critical-plumbing-drainage-environmental-protection.qmd**

- § Water treatment: E50, E55, E56.
- § Critical drainage: T16.
- § Leak detection: T12, T13, T14, T15, T17.

### Volume 5

**Ch 16 — volume-5/16-elv-security-access-control.qmd**

- § Structured cabling: S17, T22, T23, T24, T25, T26.

**Ch 17 — volume-5/17-bms-epms-dcim.qmd**

- § DDC hardware: T31.
- § I/O point quantification: T32.
- § EPMS: S11, T27, T28, T29, T30.
- § DCIM / PUE reporting: E33, E34.

### Volume 6

**Ch 18 — volume-6/18-vendor-package-management-procurement-strategy.qmd**

- § RFQs: S25, E46, E47, E48.
- § Bid leveling: S21 (UNVERIFIED).
- § Lead-time risk: M31-M42, E40, E41, E42, E43, E44.
- § Subcontract tendering: M29.

**Ch 19 — volume-6/19-variation-governance-change-control-claims.qmd**

- § Evaluating contractor-asserted variations: T38.
- § TIA and EOT: S19, S20, S30, T33-T37, T39, T40, T41, T42, T44,
  T45, T46, T48, T49, T50. Fix the "8.4/8.5" heading. *Fix.*
- § Quantifying LDs: T47, T48, T51, T52.
- § Provisional sums: E14 (800 VDC code risk; this is an inference).

### Volume 7

**Ch 20 — volume-7/20-the-five-level-commissioning-commercial-framework.qmd**

- § Commissioning cost dynamics: M54, M55, M56, M58, M59, S28, S29,
  T55, T56. Fix the "8-12%" claim. *Fix.*
- § Level 1 FAT: S12.
- § Levels 1-5: T53.

**Ch 21 — volume-7/21-temporary-commissioning-infrastructure-power-utilities.qmd**

- § Load bank procurement: T54.
- § Rework allowances: T52 (UNVERIFIED).
- Images: I16, I20.

**Ch 22 — volume-7/22-handover-final-accounts-operational-transition.qmd**

- § As-Built and COBie: S22, S23, S24, T57, T58, T59, T60, T61, T62.
- § DNP administration: T52 (UNVERIFIED).

### Other files

- **intro-commercial-architecture.qmd**: the same downtime fix as
  Ch 1 (M44, M49).
- **references.bib**: optionally update the `edition` field of
  `fidic2017silver` (S19), and check `nfpa855` against S32.

## Open questions

### Book passages to correct

These come from checking the existing chapter text against the
findings.

1. **Ch 1 and intro: the downtime figure.** The text cites "approx.
   USD 9,000 per minute" to `@uptime2018tier` and `@ref04_helonic`.
   The figure is USD 8,851/min from Ponemon/Emerson (2016) (M49) and
   should be re-attributed and dated.
2. **Ch 12: lightning protection.** The LPL I rolling-sphere and mesh
   parameters cite `@rics2021nrm2`. They should cite IEC 62305 Ed. 3
   (S13).
3. **Ch 12: TIA-607-D.** Replace with TIA-607-E (S18).
4. **Ch 13: clean-agent hold time.** The 10-minute minimum hold time
   is cited to `@nfpa75`. Cite NFPA 2001-2025 (S01) and confirm the
   wording against the 2025 text.
5. **Ch 10: battery-room ventilation.** EN 50272-2 is cited for
   hydrogen ventilation. Replace with EN IEC 62485-2:2018 (S14).
6. **Ch 19: clause heading.** The heading "Sub-Clause 8.4/8.5" mixes
   1999 and 2017 numbering. In 2017, 8.4 is Advance Warning (T45,
   T48).
7. **Ch 20: commissioning budget.** The "8-12% of total CapEx"
   commissioning budget (and "1-2%" for commercial buildings) has no
   primary support. LBNL gives a 0.4% median (M54) and a vendor gives
   about 1.5% (M56). Define the scope of the percentage or remove it.

### Conflicts

1. **UL 9540 3rd edition date.** 28 Jun 2023 (ULSE) vs April 2023
   (other sources).
2. **NFPA 76 2024.** One ANSI page labels 2024 as most recent but
   describes the 2020 edition.
3. **EN 54-20.** S05 says no successor has been published; T04 says
   a revised prEN draft exists.
4. **EED Art. 26.** "Technically and economically" vs "or", and
   paragraph 26(6) vs 26(7).
5. **NVIDIA power claims.** "85% more power" (May 2025) vs "157% more
   power" (later post).
6. **RDHx cost-competitive limit.** About 15 kW/rack (GRC) vs
   30-50 kW/rack (Alliance Chemical).
7. **Meta Odense.** 215,000 MWh and >12,000 homes (Ramboll) vs about
   165,000 MWh and about 11,000 households (TechRadar).
8. **Saudi cooling method.** Hybrid (Arab News) vs mainly
   water-intensive air cooling (Enterprise AM).
9. **Saudi water use.** 15 bn L (2024) vs 20 bn L (2025), with
   different projections.
10. **C&W guide release date.** 20 Aug 2026 (IREI) vs September 2026
    (snippet). Use August.
11. **Saudi Arabia T&T rank.** 40 of 62 vs 23rd-cheapest. These are
    the same position counted from opposite ends.
12. **GSU lead time.** 144 vs 143 weeks across secondary sources.
13. **Ponemon study year.** 2016 vs 2015 label.
14. **IEC 62485-2 edition.** "2016" (batterydesign.net) is an error.
15. **BS EN ISO 19650-4 status.** The IHS record shows it as
    withdrawn or unavailable, which is inconsistent.
16. **Lead-time ranges.** Generator, switchgear and UPS ranges differ
    by 2-3 times across secondary sources.

### Paywalled or gated

- **Cushman & Wakefield 2026 guide.** The full guide is behind a
  download form; the figures come from press releases.
- **Uptime Annual Outage Analysis 2025 and 2026.** The full reports
  are restricted to members. The PDF summary text was not extracted,
  so the sample size and cost bands are unconfirmed.
- **T&T DCCI interactive tables.** These may require registration,
  and the Gulf figures have not been seen there.
- **The standards themselves.** The full texts of NFPA 70, 72, 76,
  855, 2001, TIA-942-C, TIA-607-E, EN 54-20, IEC 62305 and the FIDIC
  Silver Book were not read.
- **utilities-me.com.** The article returned a 403 error.

### Unverified items needing primary checks before use in prose

- **Editions:** S07 (IEC 61439-2), S09 (IEC 60364-5-52), S11 (IEC
  61850 parts), S20 (SCL Protocol), S21 (Incoterms 2020), S22 (ISO
  19650-1/-2), S24 (NBIMS-US), S31 (NRM1/NRM3), S32 (NFPA 855-2026),
  S33 (AACE 56R-08).
- **Market data:** M23 (T&T 2025-26 Gulf figures) and M30 (GCC AI
  extrapolation).
- **Vendor material not read:** E09, E28, E44.
- **Background items:** T09, T10, T11, T21, T26, T30, T31, T42, T43,
  T52, T56, T61, T62.
- **Article 645 change:** confirm the NFPA 70-2026 Art. 645 change
  (S06) and look at Art. 646, which was not examined.
- **Transport times:** check the NFPA 72-2025 and NFPA 76-2024 limits
  (T05, T06, T07).
- **EnEfG threshold:** confirm the 300 kW threshold in the EnEfG text
  (E35).

### Known gaps (no source found)

- A MEP vs shell/civil percentage split.
- A cost delta per MW for liquid vs air cooling.
- Chiller and CDU lead times.
- A per-minute downtime figure from 2024-2026.
- Data-centre commissioning cost as a percentage of cost.
- Installed USD/kW for bridging power.
- A capex comparison of 800 VDC vs AC.
- A cost premium for grid-interactive UPS.
- A cost for heat-recovery plant.
- An independent study of eHouses.
- The MEP share of embodied carbon.
- City-level GCC cost benchmarks.
- SEC / National Grid SA connection charges.
- The texts of SBC 801 and the UAE Fire & Life Safety Code
  data-centre provisions.
- Points-per-MW norms.
- Data-centre-specific IEC 62443 guidance.
- ASHRAE water-quality numbers.
- An NFPA 75 drainage provision.
