# Thin-Chapter Technical and Contractual Facts for MEP-QS Data Center Book

Research date: 2026-11-23. All content is paraphrased. Most sources found
were law-firm commentary, trade press, or manufacturer material, not the
standards text, so the notes flag every item that needs checking against
the published edition. Items under "Inferences" that come from the
researcher's background knowledge rather than a fetched source are marked
[UNVERIFIED-BACKGROUND] and must be checked before they appear in book
prose.

## 1. Fire detection: aspirating smoke detection (EN 54-20, NFPA 72, NFPA 76)

### Takeaway
EN 54-20 sets three ASD sensitivity classes, defined by test fires and
judged on the whole sampling system. Class A (very high sensitivity) is the
usual class for data halls. The transport-time limits are 120 s under
NFPA 72, and sources quote 90 s (early warning) and 60 s (very early warning)
under NFPA 76. Sources disagree on which limit belongs to which standard and
edition.

### Cited Findings
- EN 54-20 Class A = very high sensitivity, for very early warning in
  spaces such as server rooms and high-airflow areas. Class B = enhanced
  sensitivity, for spaces where smoke is diluted, such as high ceilings or
  open areas. Class C = normal sensitivity, roughly equivalent to a point
  detector, used in industrial and semi-outdoor areas such as car parks —
  [Eurofyre, "Understanding EN 54-20 ASD Sensitivity Classes"](https://eurofyre.co.uk/?p=4063);
  [IFSEC Global, "Aspirating smoke detection"](https://www.ifsecglobal.com/uncategorized/aspirating-smoke-detection/)
- Classes A and B are tested with new, smaller test fires. Class C uses the
  same test fires as EN 54-7 (point detectors) —
  [Eurofyre](https://eurofyre.co.uk/?p=4063)
- Classification applies to the system as installed. The more sampling
  holes a detector serves, the more each sample is diluted, so one detector
  can hold different classes depending on hole count. A vendor example rates
  one model Class A with 16 holes (about 0.04 %obs/m) and Class C with 72
  holes (about 0.10 %obs/m) — [Xtralis document](https://xtralis.com/file/539);
  [Eurofyre](https://eurofyre.co.uk/?p=4063)
- A revised prEN 54-20 draft exists that would supersede the 2006 edition.
  Projects must confirm which edition the specification calls for —
  [iTeh standards catalogue, prEN 54-20](https://standards.iteh.ai/catalog/standards/cen/f12658f9-968f-4bf7-b9b4-b1b88675de55/pren-54-20)
- Transport time: NFPA 72 sets a maximum of 120 s from the most remote
  sampling port to the detector. A forum source says the NFPA 76 2005 and
  2009 editions set 90 s —
  [Eng-Tips thread, 2007 onward](https://eng-tips.com/threads/air-sampling-systems-transport-time.244198);
  [Honeywell FAAST fire codes PDF](https://www.honeywellanalytics.com/~/media/honeywell-analytics/products/faast/documents/fire-codes.pdf?la=en)
- An ASD application guide, citing NFPA 76, gives under 60 s transport time
  for very early warning (VEWFD) and under 90 s for early warning (EWFD),
  with per-hole sensitivity and coverage limits. This is a secondary
  document hosted on Scribd [REVIEW-SOURCE] —
  [ASD Application Guide ASAG442 (Scribd)](https://es.scribd.com/document/293776346/AspiratingSmokeDetectors-AppGuide-ASAG442)
- NFPA 76 port spacing for return-air sampling is commonly quoted as one
  sampling port per 4 ft2 (about 0.37 m2) of return-grille area. Annual
  testing includes a transport-time test from the most remote port —
  [ORR Protection, "What is an air sampling smoke detection system?"](https://www.orrprotection.com/mcfp/air-sampling-smoke-detection-system)
- Under UL 268 7th edition (not UL 7, as the search summary had it),
  product listings carry application-specific maximum transport times, for
  example 49 s for open areas and 90 s for special applications —
  [Xtralis document](https://xtralis.com/file/12041)
- Background on NFPA 75 and NFPA 76 requirements for telecom and IT
  facilities —
  [Security Sales, "Fire protection standards for telecom facilities"](https://www.securitysales.com/columns/fire-protection-standards-telecom-facilities/);
  [Mission Critical, "Smoke detection requirements in data centers"](https://missioncriticalmagazine.com/articles/85858-smoke-detection-requirements-in-data-centers)

### Inferences
- QS measurement: price ASD per detector unit (nr) by class and number of
  pipes. Measure sampling pipe (typically ABS or uPVC, 25 mm OD) in linear
  metres by zone. Count sampling holes, capillary drops and ceiling points
  as nr, return-air grille sampling as nr per AHU/CRAH, and end caps, test
  points and filters as nr. Calculation software output (for example
  Xtralis ASPIRE or Wagner PipeCAD) should be a contract deliverable, because
  hole count against transport time decides how many detectors are needed.
  [UNVERIFIED-BACKGROUND for pipe material and size]
- The hole-count dependence of the class has a commercial effect. A
  specification demanding Class A at every hole caps the area each detector
  covers, which raises the detector count and the price.
- A typical data hall layout uses two levels: Class A sampling at return-air
  paths (CRAH/AHU grilles, hot aisle) for VEWFD, plus ceiling or room
  sampling for EWFD or standard detection. [UNVERIFIED-BACKGROUND]

### Gaps
- Could not read the current NFPA 76 (2024 edition) or NFPA 72 (2025
  edition) text. Confirm the 60 s / 90 s / 120 s attribution and any
  per-port coverage limits (for example the commonly quoted VEWFD maximum of
  200 ft2 per port and 0.2 %obs/ft alarm) against the current editions.
- No official CEN or BSI paraphrase of EN 54-20 classes was found.
  Manufacturer pages are the main source.

## 2. Leak detection, liquid-cooling water quality and plumbing

### Takeaway
Rope or cable leak detection is installed in zones under raised floors, in
drip trays under pipework and around CDUs. Liquid-cooling guidance now
stresses lab-verified coolant quality at fill and at intervals (ASHRAE TC
9.9 bulletin, a companion to its 2024 cold-plate resiliency guidance). No
citable NFPA 75 water or drainage requirement was found.

### Cited Findings
- Leak detection tape or cable is run around the hall, along the tops of
  racks over drip trays, or under the raised floor. It detects leaks early
  but has drawbacks, such as nuisance alarms and maintenance —
  [DatacenterDynamics, "Data center water leaks"](https://datacenterdynamics.com/en/analysis/data-center-water-leaks)
- Vertiv describes sensing-cable runs of up to 100 ft (about 30 m) per
  zone for hard-to-reach areas. The cable dries out and resets after a
  leak, and two-channel systems cover glycol, condenser water and chilled
  water pipework, plus drip pans —
  [Vertiv, "Leak detection systems"](https://www.vertiv.com/en-us/about/news-and-events/articles/product-class-articles/leak-detection-systems/)
- OCP (Advanced Cooling Solutions) white paper on cold-plate leak detection
  and intervention covers CDUs (in-rack and end-of-row), manifolds, quick
  disconnects, designing out leaks, managing nuisance alarms, and automatic
  intervention by solenoid valve isolation or CDU shutdown —
  [OCP, Cold Plate Leak Detection and Intervention white paper](https://opencompute.org/documents/acs-cold-plate-leak-detection-and-intervention-white-paper-pdf-1)
- A patent describes a containment tray under a secondary manifold, with a
  leak detection cable that has two sensing wires wound concentrically
  around it — [USPTO patent 12690165](https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/12690165)
- Industry advice: do not route liquid pipework over electrical rooms that
  need drip trays. Re-route it early in design —
  [DCD, "The leak detectives"](https://datacenterdynamics.com/en/marketwatch/the-leak-detectives)
- ASHRAE TC 9.9 published a free Technical Bulletin, "TCS Coolant Integrity
  and System Readiness Best Practices", as a companion to its 2024 "Liquid
  Cooling: Resiliency Guidance for Cold Plate Deployments". It recommends
  lab-verifying coolant concentration and quality at first fill and at
  intervals after that. The secondary source does not give a date —
  [StorageReview, "ASHRAE TC 9.9 flags four ways DTC loops go wrong"](https://www.storagereview.com/news/ashrae-tc-9-9-flags-four-ways-direct-to-chip-cooling-loops-go-wrong)
- ASHRAE says coolant quality and filtration should be monitored, because
  poor quality lowers efficiency —
  [DCD, "ASHRAE publishes liquid cooling guidelines"](https://www.datacenterdynamics.com/en/news/ashrae-publishes-liquid-cooling-guidelines-as-chip-power-moves-into-uncharted-territory/)
- The ASHRAE Liquid Cooling Guidelines (2nd ed., 2014) include guidance on
  water quality problems and wetted-material requirements —
  [FMLink, ASHRAE updated guidance](https://www.fmlink.com/ashraes-updated-guidance-on-cooling-data-centers-adds-supply-water-temperature-classification/)
- The ASHRAE TC 9.9 white paper "Emergence and Expansion of Liquid Cooling
  in Mainstream Data Centers" (2021) argues the case for liquid cooling and
  covers little water chemistry —
  [ASHRAE PDF](https://www.ashrae.org/File%20Library/Technical%20Resources/Bookstore/Emergence-and-Expansion-of-Liquid-Cooling-in-Mainstream-Data-Centers_WP.pdf)

### Inferences
- QS measurement: price leak detection sensing cable in linear metres by
  zone, zone controllers or modules as nr, spot sensors as nr, and drip
  trays and secondary containment (stainless or GRP) in linear metres or
  m2 with outlets to drain. Price solenoid isolation valves as nr with
  interlock wiring and BMS integration points.
- TCS scope should carry fill and flush, lab testing at first fill and
  periodic sampling (a provisional or prime-cost item), side-stream
  filtration (typically 25-50 micron at the CDU) and glycol (PG25) volume
  in litres. Fill and passivation are often disputed demarcation items
  between the CDU vendor (OFCI) and the MEP contractor.
  [UNVERIFIED-BACKGROUND for filtration micron rating]
- Evaporative or adiabatic systems need RO or softening plant, make-up and
  blowdown metering, and chemical dosing. Price these as plant (nr),
  pipework (m) and an O&M chemical allowance.

### Gaps
- No citable NFPA 75 (2024) drainage or water provision was found. NFPA 75
  has historically addressed water-based suppression and drainage for
  under-floor spaces; check the current text.
- No primary ASHRAE 2024 water-quality numbers were found (for example pH,
  conductivity or bacteria limits for the FWS/TCS loops). Take them from
  the ASHRAE "Water-Cooled Servers" white paper or the TC 9.9 bulletin
  directly.
- RO and water-quality guidance for evaporative cooling was not researched,
  because the tool-call budget ran out.

## 3. ANSI/TIA-942-C (2024): rating levels and cabling takeoff

### Takeaway
TIA-942-C was published in May 2024. It keeps the four rated levels (Rated-3
is concurrently maintainable, Rated-4 fault tolerant) and makes the Annex D
rating tables normative, replacing "Yes/No" with "Required/Not Required". It
also adds edge data center content, a minimum of 2 fibers for horizontal
backbone cabling, and floor loading and minimum cabinet width provisions.

### Cited Findings
- Published as ANSI/TIA-942-C in May 2024 after a multi-year revision —
  [Cabling Installation & Maintenance, "TIA-942-C published"](https://cablinginstall.com/standards/article/55038592/tia-942-c-data-center-standard-published);
  [TIA press release](https://tiaonline.org/?p=35007);
  [DCD news](https://www.datacenterdynamics.com/en/news/tia-releases-third-revision-of-telecommunications-infrastructure-standard-for-data-centers)
- Four rating levels remain. Rated-3 = concurrently maintainable, Rated-4 =
  fault tolerant. Higher ratings bring higher resilience and higher
  construction cost — [Belden blog, "Introducing ANSI/TIA-942-C"](https://www.belden.com/blog/introducing-ansi-tia-942-c-recent-updates-to-data-center-standards)
- Annex D rating tables became normative and use "Required/Not Required".
  UPS, battery, fire protection and seismic requirements were simplified.
  Several annexes were renumbered and changed from informative to normative.
  This comes from a single vendor article, so verify it —
  [The Network Installers, "ANSI/TIA-942-C standard"](https://thenetworkinstallers.com/blog/ansi-tia-942-c-standard/)
- Other changes: edge data center content (from earlier standalone
  documents) brought in; a recommended minimum of 2 fibers for horizontal
  backbone cabling; new cabling requirements; floor loading capacity; and
  minimum cabinet width —
  [Data Center Frontier, "'C' Revision of TIA-942"](https://www.datacenterfrontier.com/design/article/33037194/c-revision-of-tia-942-data-center-standard-specifies-for-fiber-connectivity-cabinet-widths);
  [ISE Magazine](https://www.isemag.com/cande-netdev-ops-gis-open-source-networks/data-centers/article/55284487/tia-942-c-data-center-standard-brings-a-host-of-changes-and-updates)
- TIA has started Addendum 1 (Artificial Intelligence) to TIA-942-C. Over
  100 data centres are certified to TIA-942-C —
  [TIA-942 product page](https://tiaonline.org/products/tia-942/);
  [CI&M, "100 data centers certified to TIA-942-C"](https://cablinginstall.com/standards/press-release/55278043/100-data-centers-certified-to-tia-942-c)
- Standards summary for Q4 2024 —
  [Leviton Industry Standards Report Q4 2024 PDF](https://leviton.com/content/dam/leviton/network-solutions/product_documents/standards/Leviton-Industry-Standards-Report-Q4-2024.pdf)

### Inferences
- TIA rating definitions: Rated-1 = basic, Rated-2 = redundant components,
  Rated-3 = concurrently maintainable, Rated-4 = fault tolerant. Rated-3 and
  Rated-4 are confirmed above. The Rated-1 and Rated-2 wording is
  [UNVERIFIED-BACKGROUND].
- QS takeoff measures for structured cabling:
  - MPO/MTP trunk cables as nr by fibre count (12, 24, 144 F and so on) and
    length band.
  - Backbone fibre cable in metres by fibre count.
  - Copper Cat6A runs in metres or as nr of permanent links.
  - Patch panels and cassettes as nr.
  - Overhead fibre raceway and wire-mesh tray in metres, with fittings as
    nr.
  - Racks and cabinets as nr, noting the new minimum cabinet width.
  - Testing and certification per link or per fibre (OTDR/OLTS).
  The spaces the standard defines (ER, MDA, IDA, HDA, ZDA, EDA) are useful
  BOQ breakdown headings.

### Gaps
- The TIA standard text is paywalled. Rating table contents and the exact
  2-fibre wording are not verified from the primary source.
- No published norms were found for fibre count per rack or per MW in AI
  halls.

## 4. BMS, EPMS and DCIM: point counts, metering hierarchy, time sync, cybersecurity

### Takeaway
EPMS events need millisecond time-stamping, while BMS responds in 5-60 s.
Accurate sequence-of-events records across meters therefore need a shared
precise time source: IEEE 1588 PTP using the IEEE C37.238 power profile.
Siemens recommends power-quality metering at every level of the hierarchy:
grid infeed, ATS, UPS, distribution, cooling and rack. No published
points-per-MW norm or data-centre-specific IEC 62443 guidance was found.

### Cited Findings
- Meter data, alarms, events, waveforms and logs all depend on a shared
  precise time reference if they are to correlate across devices. IEEE
  C37.238 is the PTP profile for power-system applications. Some PTP
  profiles need PTP-aware switches, and simpler ones do not. Vendor source
  (Cyber Sciences, about 2017) —
  [Trystar/Cyber Sciences EPMS presentation PDF](https://trystar.com/wp-content/uploads/PP-PTP-01_EPMS-HD_presentation.pdf)
- EPMS time-stamps events to the millisecond. A typical BMS responds in 5
  to 60 s. Siemens recommends one integrated interface over BMS and EPMS —
  [Siemens, Data Centers reference architecture, single UI BMS/EPMS PDF](https://assets.new.siemens.com/siemens/assets/api/uuid:85039708-2b45-4081-bffb-3bc09af0b642/Data-Centers-RefArch-Single-UI-BMSEPMS_original.pdf);
  [Siemens, BMS-EPMS integration](https://www.siemens.com/en-us/industries/data-centers/bms-epms-integration/)
- Power-quality instruments go at grid infeed, ATS, UPS, distribution
  units, cooling systems and racks. Compliance reporting references EN
  50160 and IEC 61000, and IEC 61850 and Modbus TCP are the suggested open
  protocols — [Siemens, Improve power quality](https://www.siemens.com/en-us/industries/data-centers/improve-power-quality/)

### Inferences
- EPMS metering hierarchy for BOQ:
  - Class A power-quality analysers (IEC 61000-4-30) at utility incomers
    and MV.
  - Advanced meters at transformer secondary, generator, UPS input and
    output, and main LV switchboard.
  - Basic multifunction meters at feeders and the mechanical MCC.
  - Branch circuit monitoring at the PDU/RPP.
  - Intelligent rack PDUs, often OFCI.
  Price each tier as nr per device, plus CTs, gateways, PTP grandmaster
  clocks (GPS) and PTP-capable switches.
  [UNVERIFIED-BACKGROUND for the tiering convention]
- IEC 62443 effect on cost: zones and conduits segmentation (OT firewalls,
  managed switches), security-level targets (SL1-SL3), hardened
  integrator procedures and certification testing. These usually add a
  separate OT cybersecurity line item and FAT or pen-test activities.
  [UNVERIFIED-BACKGROUND]
- Points-list pricing: integrators price per hardware or software point.
  The book should tell the QS to build point counts from the device
  schedule, for example points per CRAH, CDU, UPS module, generator and
  breaker. Do not use per-MW rules of thumb, because no published norm was
  found.

### Gaps
- No published points-per-MW or points-per-device norms were found.
- No IEC 62443 guidance specific to data centre BMS/EPMS was found.

## 5. SCL Delay and Disruption Protocol 2nd ed. (2017) and AACE RP 29R-03

### Takeaway
The 2nd edition (February 2017) drops the 1st edition's preference for time
impact analysis. For after-the-event analysis it names no preferred method
and lists selection factors instead. It describes six common methods, now
including windows analysis. Concurrency needs both an Employer Risk Event
and a Contractor Risk Event to be effective causes of critical delay at the
same time, and where it exists, Contractor delay should not reduce the EOT.
On float, an EOT is due only once available float has been used up. AACE RP
29R-03 sorts methods into observational and modeled (additive/subtractive)
categories, uses nine Method Implementation Protocols, and ranks none of
them.

### Cited Findings
- No single method is preferred for analysis carried out some time after
  the event. The selection factors are the contract terms, project
  circumstances, nature of the events, nature of the claim or dispute,
  project value, time available, records available, and proportionality.
  The 1st edition preference for TIA was dropped, and windows analysis was
  added —
  [Fenwick Elliott, "The SCL Delay and Disruption Protocol: a second edition"](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition)
- The Protocol summarises six commonly used methods. It prefers prompt,
  contemporaneous evaluation —
  [CMS, "SCL Delay and Disruption Protocol: common sense approach"](https://cms.law/en/gbr/legal-updates/scl-delay-and-disruption-protocol-scl-promotes-common-sense-approach-to-dark-art-of-delay-analysis);
  [Mosaic Projects paper P216, "Assessing Delay: the SCL options"](https://mail.mosaicprojects.com.au/PDF_Papers/P216_Assessing_Delay_The_SCL_Options.pdf)
- New Core Principle 1 asks the parties to agree records and resource them.
  Appendix B lists record types, and records should be jointly signed where
  practicable. New Core Principle 4 asks for EOT applications to be made and
  decided close to the delay event — [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition)
- Concurrency definition: an Employer Risk Event and a Contractor Risk Event
  must both be effective causes of delay to completion, affecting the
  critical path at the same time. True concurrency is rare. Where it exists,
  the Contractor's delay should not reduce the EOT —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition);
  [Building, "SCL delay and disruption protocol take two"](https://www.building.co.uk/communities/scl-delay-and-disruption-protocol-take-two/5082412.article)
- Float: where total float remains at the time of a delay, an EOT should be
  granted only to the extent that the delay extends the completion date
  after the available float is used up. Identifying float needs a properly
  prepared, regularly updated CPM programme —
  [Mosaic Projects P216](https://mail.mosaicprojects.com.au/PDF_Papers/P216_Assessing_Delay_The_SCL_Options.pdf);
  [Keane & Caletka excerpt PDF](https://res.cloudinary.com/dun3slcfg/image/upload/v1705068774/cloud-files/Delay-Analysis-in-Construction-Contracts.pdf)
- Global or composite claims are discouraged. A global claim can fail
  entirely if any material part of the loss has a cause the Employer is not
  responsible for. The Queensland Court of Appeal in *Santos v Fluor* (2017)
  accepted the measured-mile method for lost productivity with reference to
  the 2nd edition —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition)
- The Protocol binds only if a contract adopts it, but courts and tribunals
  use it as a benchmark —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/scl-delay-disruption-protocol-second-edition)
- AACE RP 29R-03 (rev. 2011) splits retrospective methods into
  observational (static or dynamic) and modeled (additive or subtractive),
  and sets out nine Method Implementation Protocols. It is a taxonomy and
  does not rank the methods —
  [AACE 29R-03 table of contents PDF](https://web.aacei.org/docs/default-source/toc/toc_29r-03.pdf?sfvrsn=4);
  [Planning Planet copy of 29R-03 (2011)](https://planningplanet.com/sites/default/files/guild_articles/11/2011_29r-03_r2.pdf);
  [HKA, "Forensic delay analysis methodologies"](https://www.hka.com/article/forensic-delay-analysis-methodologies/)
- Critics say giving modeled additive methods a quarter of the document,
  on equal footing with observational methods, is misguided. This is one
  commentator's view —
  [ENR, "Forensic scheduling's groundhog day"](https://enr.com/articles/56770-forensic-schedulings-groundhog-day-dubious-practices-recommended-again)

### Inferences
- Mapping of the six SCL methods to AACE MIPs:

  | SCL method | AACE MIP |
  |---|---|
  | Impacted as-planned | MIP 3.6 / 3.7 (modeled additive) |
  | Time impact analysis | MIP 3.7 (modeled additive, multiple base) |
  | Time slice windows | MIP 3.3 / 3.4 (observational dynamic) |
  | As-planned vs as-built windows | MIP 3.2 / 3.1 (observational static) |
  | Retrospective longest path | MIP 3.4 (observational dynamic) |
  | Collapsed as-built | MIP 3.8 / 3.9 (modeled subtractive) |

  This mapping is [UNVERIFIED-BACKGROUND]. The method names match the
  task brief, but no fetched source listed all six.
- The SCL Protocol says nothing on compensation for concurrent delay in the
  sources read. Common English practice ("time but no money") is
  [UNVERIFIED-BACKGROUND].
- Float ownership: the Protocol's position is that, unless the contract
  says otherwise, float is not reserved for either party. The Contractor
  gets an EOT only when the delay reduces float to below zero.

### Gaps
- No fetched source gave the Protocol's own text listing all six method
  names, or its explicit position on prolongation costs in concurrency.

## 6. FIDIC Silver Book 2017 (2nd ed., reprinted 2022)

### Takeaway
Clause 8 covers time. The programme (8.3) must be logically linked and show
float. An EOT (8.5) needs a Notice and a methodical analysis, and FIDIC
leaves concurrency to the Special Provisions. Delay damages (8.8) are a
daily rate from the Contract Data up to the Taking-Over Certificate date,
capped at a maximum. Under Clause 20, a Notice of Claim is due within 28
days of awareness and is a condition precedent. A fully detailed claim is
due within 84 days. Under the Silver Book these go to the other Party or the
Employer's Representative, as there is no Engineer.

### Cited Findings
- 8.3 Programme: FIDIC 2017 requires the programme to show logically linked
  activities, inspection and test timing, key dates, float, rest days and
  holidays, and deliveries, with a supporting method statement. It must be
  updated when it stops reflecting progress, with proposed recovery measures
  — [Fenwick Elliott, "How the 2017 FIDIC contract deals with time"](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time)
- 8.4 Advance warning was tightened from "endeavour to" to "shall", but
  FIDIC sets no sanction for failing to warn (unlike NEC) —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time)
- 8.5 EOT applies only on defined grounds and with a Notice. The Notice
  must be identified as a "Notice", and programmes or progress reports do
  not count as one. The claimant must link specific events to specific
  delay periods. Determination is made under 3.7 (3.5 in the Silver Book,
  by the Employer's Representative). Concurrency is left to the Special
  Provisions: *Walter Lilly* (England) gives a full EOT, *City Inn*
  (Scotland) apportions, and civil-law systems tend to apportion —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time)
- 8.8 Delay Damages: a daily rate set in the Contract Data, payable until
  the date in the Taking-Over Certificate. The cap is a maximum percentage
  of the final Contract Price, set in the Contract Data. Enforceability
  depends on the governing law: *Cavendish* proportionality in England,
  judicial adjustment to actual loss in the UAE, and so on. The Employer
  must also give a Notice of Claim to deduct delay damages —
  [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time);
  [Fenwick Elliott PDF version](https://www.fenwickelliott.com/sites/default/files/jg_-_how_the_2017_fidic_contract_deals_with_time.pdf)
- Silver Book 2017 sub-clause numbering confirmed: 8.5 EOT, 8.7 Rate of
  Progress, 8.8 Delay Damages, 8.9 Employer's Suspension —
  [Emerald companion preview PDF](https://bookstore.emerald.com/media/preview/9781836081814-23-2.pdf)
- 20.1/20.2 Claims: Notice of Claim as soon as practicable and no later
  than 28 days after the claimant became aware (or should have become
  aware). Under the Silver Book it goes to the other Party, as there is no
  Engineer. A fully detailed Claim is due within 84 days, with monthly
  updates for continuing effects. If the contractual or legal basis is not
  stated within 84 days, the Notice lapses. The recipient has 14 days to
  object to a late Notice, or it is deemed valid. Under 1999 the detailed
  claim was due in 42 days —
  [CMS, "New FIDIC Second Editions: revamped claims"](https://cms.law/en/gbr/legal-updates/new-fidic-second-editions-revamped-claims-and-dispute-resolution-provisions);
  [Fenwick Elliott, "Changes to the claims provisions in the 2017 Red Book"](https://www.fenwickelliott.com/knowledge-hub/international-quarterlies/issue-25/changes-to-the-claims-provisions-in-the-2017-fidic-red-book/);
  [ICC blog, claims under FIDIC 2017](https://iccwbo.org/news-publications/guests-blog-speeches/guest-blog-its-easy-when-you-know-how-an-explanation-of-the-ins-and-outs-of-claims-under-fidic-2017/)
- 20.2.5: a time bar can be waived after considering prejudice to the other
  party and its prior knowledge of the event. Regular programme updates can
  evidence that knowledge — [Fenwick Elliott](https://www.fenwickelliott.com/research-insight/newsletters/international-quarterly/how-fidic-contract-deals-with-time)
- The 2017 edition refined the delay damages cap —
  [IBA, "FIDIC commentaries", January 2019](https://www.ibanet.org/article/22569010-dd6b-460c-9ee7-f3f33c2b7f06)

### Inferences
- Remaining clauses, all [UNVERIFIED-BACKGROUND] and to be checked against
  the 2017 Silver Book text:
  - Clause 9 Tests on Completion: the Contractor gives notice and the
    Employer can retest. Failure can lead to rejection or a price
    reduction.
  - Clause 10.1 Taking Over: a Taking-Over Certificate is issued within 28
    days of the application.
  - Clause 11 Defects: the Defects Notification Period comes from the
    Contract Data (default 365 days) and can be extended up to two years in
    total under 11.3.
  - Clause 12 Tests after Completion: where the Particular Conditions
    provide, performance damages for failing these tests are payable from
    the Contract Data schedule. They are the Contractor's sole liability for
    the shortfall.
  - Clause 1.14 Limitation of Liability: the total cap comes from the
    Contract Data.
- Data-centre effect: write PUE, capacity and IST pass criteria into
  Clause 12 Tests after Completion schedules, with performance damages
  as a percentage per unit shortfall. The QS should price the cost of
  re-testing (load bank hire, utility energy) as Contractor risk.

### Gaps
- Primary text for Clauses 9, 10, 11, 12 and the performance damages
  provisions was not fetched. Use the FIDIC 2017 Silver Book (`@fidic2017silver`).

## 7. Data center commissioning Levels 1-5 and load banks

### Takeaway
The industry five-level model is used consistently:
- L1: factory witness or acceptance testing.
- L2: site delivery and installation inspection.
- L3: pre-functional and start-up, including load-bank burn-in.
- L4: individual system functional performance testing.
- L5: integrated systems testing at full load with staged failures.
Load banks (resistive and reactive, leading and lagging power factor) prove
generators and UPS at 100 % load. Heat load banks prove cooling. Owner
frameworks vary (for example a Level 0-6 model with 2A/2B).

### Cited Findings
- L1 is tested before delivery, and before and after assembly. L2 verifies
  correct installation before first switch-on. L3 covers pre-functional
  work, including load-bank burn-in and thermal imaging for hotspots, with
  nothing energised until it is complete. L4 tests each system. L5 tests
  the facility at full load as an integrated whole (power, cooling, IT
  infrastructure), including varying loads, staged equipment failures and
  utility failure simulations. Source is a load-bank vendor —
  [Aggreko, "Load bank testing and commissioning key to data center performance"](https://www.aggreko.com/en-us/resources/data-centers/load-bank-testing-and-commissioning-key-to-data-center-performance);
  [Aggreko, Data centre commissioning](https://www.aggreko.com/en-us/sectors/data-centres/data-centre-commissioning)
- Resistive and reactive load banks simulate electrical load on generators
  and UPS to prove 100 % performance at full load, at both leading and
  lagging power factor. Typical L5 activities: electrical integrated
  testing, electrical load-bank testing and heat load testing —
  [Aggreko whitepaper AGK5006-1, Apr 2020 PDF](https://bynder.aggreko.com/m/34acbfd3f0f96433/original/AGK5006-1_loadbank-and-commissioning-for-data-centres_whitepaper_global_Apr2020-pdf.pdf)
- Alternative frameworks: IFMA FMJ describes a NEBB-aligned Level 0-6
  model with Level 2A/2B inspections. IPS extends five-level commissioning
  to whole-building scope —
  [IFMA FMJ, "Beyond Traditional" (NEBB)](https://fmj.ifma.org/beyond-traditional-nebb);
  [IPS, "Commissioning data centers"](https://www.ipsdb.com/happenings/insights/commissioning-data-centers)

### Inferences
- QS cost lines:
  - Load-bank hire per kW-week, by type (resistive, resistive-reactive,
    rack-mount heat load).
  - Cable and connection labour.
  - Fuel for generator tests in litres. The book's Chapter 21 calculator
    already covers this.
  - Utility energy in MWh.
  - CxA fees per level.
  - Witness travel for L1 FATs as nr per trip.
  - Re-test allowances.
- ASHRAE Guideline 0 (process) and the BCxA framing are background. No
  fetched source tied them to Levels 1-5. [UNVERIFIED-BACKGROUND]

### Gaps
- No primary Uptime, ASHRAE Guideline 0 or BCxA definition of Levels 1-5
  was retrieved. The five-level model is an industry convention, not a
  single standard.

## 8. COBie and ISO 19650 handover

### Takeaway
BS 1192-4:2014 (the UK COBie code of practice) is withdrawn. BS EN ISO
19650-4:2022 is listed as its successor, with a UK National Annex in
development to carry COBie usage forward. COBie is a non-geometric asset
data format, delivered in staged data drops at project milestones and
feeding the Asset Information Model (AIM) defined by the client's Asset
Information Requirements (AIR).

### Cited Findings
- BS 1192-4:2014 (COBie code of practice for fulfilling employer's
  information exchange requirements) is shown as withdrawn by BSI —
  [BSI Knowledge, BS 1192-4](https://knowledge.bsigroup.com/products/collaborative-production-of-information-fulfilling-employer-s-information-exchange-requirements-using-cobie-code-of-practice)
- BS EN ISO 19650-4:2022 is recorded as superseding BS 1192-4:2014. The
  same IHS record shows a withdrawn or unavailable status, which looks
  inconsistent, so check BSI —
  [IHS/Accuris record](https://cis.ihs.com/CIS/document/337690)
- Work is under way on a UK National Annex to BS EN ISO 19650-4 covering
  COBie usage in the UK BIM Framework —
  [Designing Buildings, COBie](https://www.designingbuildings.co.uk/wiki/COBie)
- COBie is still relevant under ISO 19650 even though PAS 1192-2 was
  withdrawn —
  [Construction Management, "COBie is not dead"](https://constructionmanagement.co.uk/cobie-not-dead-introduction-19650/)
- COBie is a non-proprietary format for the asset-data subset of a BIM
  model, not its geometry. Data drops are needed at key milestones, matched
  to the level of development, and are validated at each stage. The AIM is
  defined by the client's AIR and used by FM teams —
  [Designing Buildings, COBie](https://www.designingbuildings.co.uk/wiki/Construction_Operations_Building_Information_Exchange);
  [UK BIM Alliance guide via BEAMA PDF](https://www.beama.org.uk/static/98bf5d8b-1fb8-4954-8c066266bdfd9ead/UK-BIM-Alliance-Guide-to-what-data-is-required-for-BIM-level-2.pdf)
- Academic discussion of managing COBie data —
  [Pitt et al., UCL Discovery PDF](https://discovery.ucl.ac.uk/10050970/1/Pitt%20COBie_Management_Paper.pdf)

### Inferences
- ISO 19650 terminology for the book:
  - OIR (organizational), AIR (asset) and EIR (exchange) information
    requirements.
  - PIM (project information model) handed over into the AIM.
  - ISO 19650-3 for the operational phase.
  - ISO 19650-4 for information exchange.
  The part titles are [UNVERIFIED-BACKGROUND].
- Classic UK data drops were DD1 (brief), DD2 (concept), DD3 (definition or
  design), DD4 (construction/handover) and DD5 (in use) under PAS 1192-2.
  These are now superseded by project-specific information delivery
  milestones. [UNVERIFIED-BACKGROUND]
- QS effect:
  - Price COBie/AIM production as a preliminaries or digital-delivery line:
    asset tagging (nr of maintainable assets), data population per asset
    attribute set, and validation and resubmission cycles.
  - Tie O&M manuals, spares schedules (per OEM), as-built models and
    warranty registers to handover payment milestones or retention
    release.

### Gaps
- No ukbimframework.org or ISO 19650-3 primary page was retrieved.
- The current BSI status of BS EN ISO 19650-4 and its National Annex needs
  checking directly.
