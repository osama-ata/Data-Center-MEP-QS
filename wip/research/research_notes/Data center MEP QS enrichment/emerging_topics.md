# Emerging Data Center MEP Technologies and Regional Requirements: Cost, Measurement and Contract Effects

Research date: 23 Nov 2026. About 25 search and fetch calls. Most figures come from search summaries or single-page fetches, not full readings of the standards. Vendor claims are marked [VENDOR]. Facts drawn from a search summary of a page, rather than a direct fetch, are marked (snippet). The report writer should check (snippet) items before quoting exact wording.

## 1. Immersion cooling (single- and two-phase) and rear-door heat exchangers (RDHx): densities, cost premiums, fluid volumes and cost

### Takeaway
Direct-to-chip (DTC) is generally the cheapest liquid option on capex. One unnamed study puts immersion at about USD 1.0 M per MW of IT load against USD 0.65 M per MW for DTC, a premium of roughly 50%. Immersion looks better only on 10-year TCO, and mostly in vendor-commissioned studies. Reported RDHx density limits run from 15 to 50 kW/rack, and the figure depends on who is reporting it. Dielectric fluid costs USD 3–12/L, against USD 0.15–0.40/L for glycol-water. I found no vendor-neutral litres-per-tank figure.

### Cited Findings
- One study, which the article does not name, puts immersion at about USD 1 M per MW of IT load and DTC at about USD 650,000 per MW. The article says immersion is hard to justify on capex alone. Data Center Knowledge, "Why Immersion Cooling Still Hasn't Gone Mainstream", 2024/25 (snippet). — [Data Center Knowledge](https://datacenterknowledge.com/cooling/why-immersion-cooling-still-hasn-t-gone-mainstream)
- LiquidStack/Chemours/Syska 10-year TCO study: two-phase immersion (2PIC) had the lowest 10-year TCO in most scenarios, but higher capital cost than DTC in most present-day scenarios. In a future Northern Virginia scenario, 2PIC 10-year TCO was 13% higher than DTC. [VENDOR-commissioned] Facilities Dive, 2024 (snippet). — [Facilities Dive](https://www.facilitiesdive.com/news/dual-phase-immersion-cooling-can-lower-future-cost-of-ownership-in-most-cas/715361/)
- A third-party case study commissioned by LiquidStack claims day-one capex savings of up to USD 3.5 M per MW for two-phase immersion against air, in a 36 MW layout. [VENDOR] The Register, 14 Apr 2023 (snippet). — [The Register](https://www.theregister.com/2023/04/14/liquidstack_immersion_cooling/)
- Schneider Electric: at 2 MW and 10 kW/rack, air cooling cost USD 7.02/W and liquid USD 6.98/W, close to parity. At 40 kW/rack, liquid saved about 14% capex. [VENDOR] Schneider blog, 24 Feb 2020. This is older than the preferred window but is a widely cited baseline. — [Schneider Electric blog](https://blog.se.com/datacenter/architecture/2020/02/24/liquid-vs-air-cooling-which-is-the-capex-winner/)
- A UC Davis-linked paper compares seven cooling strategies on cost, density and retrofit difficulty. It appeared in the ACEEE Summer Study 2026 proceedings, and its cost figures were not extracted. — [eScholarship PDF](https://escholarship.org/content/qt12w2793d/qt12w2793d.pdf); [ACEEE proceedings PDF](https://www.aceee.org/sites/default/files/proceedings/ssb26/pdfs/369_0959_1434_000619.pdf)
- Single-phase immersion density: GRC claims up to 100 kW per tank, and theoretically 200 kW with chilled water [VENDOR]. Vertiv cites up to 100 kW per tank in 42U or 52U formats [VENDOR] (snippet). — [GRC](https://www.grcooling.com/data-center-cold-wars-part-4single-phase-immersion-cooling-versus-rear-door-heat-exchangers); [Vertiv](https://www.vertiv.com/en-us/about/news-and-insights/articles/blog-posts/advancing-data-center-performance-with-immersion-cooling/)
- RDHx limits conflict. GRC, an immersion vendor and so a competitor of RDHx, says RDHx stops being cost-competitive at about 15 kW/rack. A chemicals distributor gives 30–50 kW/rack, depending on chilled-water supply temperature (snippet). — [GRC](https://www.grcooling.com/data-center-cold-wars-part-4single-phase-immersion-cooling-versus-rear-door-heat-exchangers); contradicted by [Alliance Chemical](https://alliancechemical.com/blogs/articles/direct-to-chip-vs-immersion-cooling-fluid-types)
- Fluid cost: dielectric fluids about USD 3–12 per litre, glycol-water blends about USD 0.15–0.40 per litre. Loaded tank weights are about 2,000–4,000 kg. This source is a chemicals seller, not neutral (snippet). — [Alliance Chemical](https://alliancechemical.com/blogs/articles/direct-to-chip-vs-immersion-cooling-fluid-types)
- GRC claims its single-phase coolant will probably not need replacing over a typical facility lifecycle. [VENDOR, unverified] — [GRC ebook PDF](https://www.grcooling.com/wp-content/uploads/2021/06/grc_ebook_%E2%80%94_the_definitive_guide_to_single-phase_immersion_cooling.pdf)

### Inferences
- In the bill of quantities (BOQ), immersion adds items that air and DTC designs do not have:
  - tanks, measured as number of tanks with kW rating, U-height and loaded mass;
  - first-fill dielectric fluid in litres, priced per litre with a spares or top-up allowance;
  - structural slab loading for tanks of 2–4 t each;
  - fluid handling, filtration and containment or bunding;
  - an operation and maintenance (O&M) fluid-loss allowance.
  
  Fluid unit costs are 10–80 times those of glycol, so measure fluid volume as a separate BOQ item, not as part of the equipment rate.
- Scope demarcation: decide whether first fill is owner-furnished (OFCI) or contractor-furnished (CFCI), and who carries warranty risk on fluid compatibility with IT hardware. Server-vendor warranty conditions in immersion are a commercial risk the QS should flag.
- RDHx is mainly a chilled-water distribution and secondary-piping measurement problem: flexible hoses, manifolds and a CDU or direct chilled-water supply for each rack. It fits as a retrofit or transitional option in the 15–50 kW/rack band.

### Gaps
- I found no ASHRAE TC 9.9, OCP or Uptime vendor-neutral capex-per-MW figure for immersion, or a litres-per-tank figure, within the call budget. OCP's Advanced Cooling Solutions immersion requirements documents are the next place to look.
- No vendor-neutral two-phase fluid pricing was found. PFAS-related supply withdrawal, such as 3M's Novec exit, is a known issue but was not sourced in this pass.

## 2. 800 VDC / high-voltage DC rack power (NVIDIA 800 VDC, OCP Mt Diablo, solid-state transformers)

### Takeaway
The industry is moving from 54/48 VDC in-rack power and 415/480 VAC distribution towards two architectures:
- ±400 VDC sidecar power racks fed from 480 VAC, the OCP Mt Diablo v1.0.0 specification of Oct 2026;
- facility-level conversion from medium-voltage AC to 800 VDC, NVIDIA's architecture, targeted at 2027 Kyber racks of 1 MW or more.

The changes reach the whole LV package: busway, protection at every boundary, removal of power supplies from the rack, and energy storage for GPU load swings. NVIDIA's own savings claims are about 45% less copper and up to 5% better efficiency.

### Cited Findings
- NVIDIA, 20 May 2025 (all [VENDOR]):
  - Legacy 54 V in-rack distribution reaches physical limits above about 200 kW per rack.
  - A 1 MW rack at 54 V could need about 200 kg of copper busbar, which scales to about 200,000 kg for a 1 GW site.
  - NVIDIA plans to support 1 MW IT racks from 2027, alongside Kyber rack-scale systems.
  
  — [NVIDIA Technical Blog](https://developer.nvidia.com/blog/nvidia-800-v-hvdc-architecture-will-power-the-next-generation-of-ai-factories)
- Same source [VENDOR]:
  - 13.8 kV AC is converted directly to 800 VDC at the facility perimeter.
  - Racks take 800 V directly, which removes AC/DC conversion inside the rack.
  - 800 V row busways carry about 85% more power through the same conductor size.
  - Copper is reduced by about 45% compared with 415 VAC.
  - End-to-end efficiency improves by up to 5%, maintenance cost falls by up to 70%, and TCO falls by up to 30%.
  
  — [NVIDIA Technical Blog](https://developer.nvidia.com/blog/nvidia-800-v-hvdc-architecture-will-power-the-next-generation-of-ai-factories)
- Same source:
  - Overcurrent protection is needed at each boundary: power room to hall, hall to row, and row to rack. Options are fuse-and-disconnect units, solid-state devices and DC breakers.
  - Energy storage is included to absorb sub-second GPU power swings.
  - NVIDIA says it is studying the trade-offs between solid-state transformers and conventional transformers.
  - Named power-system partners include Eaton, Schneider Electric and Vertiv.
  
  — [NVIDIA Technical Blog](https://developer.nvidia.com/blog/nvidia-800-v-hvdc-architecture-will-power-the-next-generation-of-ai-factories)
- NVIDIA's later material [VENDOR] (snippet):
  - a staged path of rack-level power racks, then cluster-level power centers, then hall-level power blocks;
  - rack-level power racks expected in 2H 2026;
  - more than 80 ecosystem companies;
  - a later post claims 157% more power than 415 VAC on the same wire gauge.
  
  — [NVIDIA 800 VDC product page](https://www.nvidia.com/en-us/data-center/technologies/800-vdc-architecture/); [NVIDIA blog: Building the 800 VDC Ecosystem](https://developer.nvidia.com/blog/building-the-800-vdc-ecosystem-for-efficient-scalable-ai-factories)
- Note the conflict: NVIDIA cites "85% more power" in May 2025 and "157% more power" in a later post. These probably compare different conductor or voltage configurations, so check before quoting either figure.
- OCP Mt Diablo Disaggregated Power Rack Specification v1.0.0, dated 8 Oct 2026, authored by Microsoft, Meta and Google (snippet):
  - The project was renamed from Diablo 400.
  - AC/DC conversion, protection and optional energy storage move into a sidecar power rack that delivers ±400 VDC to IT racks of 100 kW to 1 MW.
  - The voltage choice uses the electric-vehicle supply chain.
  - Per an OCP summary, the sidecar converts 480 VAC to ±400 VDC or 0–800 VDC, and a Mt Diablo 2.0 is planned for native 800 V.
  
  — [OCP spec PDF](https://www.opencompute.org/wp-content/uploads/2026/10/OCP-Specification-Mt.-Diablo-Disaggregated-Power-Rack-Specification-v1.0.0.pdf); [OCP news on LVDC](https://www.opencompute.org/news/powering-the-next-era-of-ai-how-google-microsoft-and-nvidia-are-standardizing-and-accelerating-the-industry-transition-to-lvdc/)
- Google described plans for 1 MW IT racks that use the EV supply chain at OCP EMEA in 2025. — [The Register, 1 May 2025](https://www.theregister.com/2025/05/01/google_details_plans_for_1)
- OCP also hosts an LVDC solid-state transformer specification and a joint NVIDIA/Google/Microsoft white paper (snippet; not read). — [OCP news](https://www.opencompute.org/news/powering-the-next-era-of-ai-how-google-microsoft-and-nvidia-are-standardizing-and-accelerating-the-industry-transition-to-lvdc/)
- Vertiv has published a practical guide to the 800 VDC decision [VENDOR; not read]. — [Vertiv](https://www.vertiv.com/en-us/insights/articles/educational-articles/the-800-vdc-decision-a-practical-guide-for-ai-power-architecture/)

### Inferences
- What changes in the LV BOQ:
  - Fewer and smaller LV AC switchboards and PDU/RPP items.
  - New DC items: sidecar power racks or centralised MV-to-DC rectifier or SST blocks, DC busway rated in A at ±400 V or 800 V, and DC protection at each boundary (fuses, solid-state breakers, DC isolators).
  - Copper tonnage is the main quantity driver. If NVIDIA's 45% claim holds, cable and busbar rates per kW fall.
- The UPS scope may shift from central AC double-conversion UPS to DC-coupled battery or supercapacitor storage in the sidecar or power block, so the demarcation between "IT rack" and "facility power" moves.
- Power racks may be supplied by the IT vendor (OFCI), not the electrical contractor (CFCI). This needs a clear responsibility (RACI) line at the sidecar input terminals.
- Commercial risk: codes such as NFPA 70 and IEC 60364, and DC arc-flash and protection practice at ±400/800 V, are still developing. This affects design-liability allocation and provisional sums.

### Gaps
- No third-party cost data per MW for 800 VDC against AC distribution was found.
- The Mt Diablo electrical tables, the SST specification and code status (NEC/IEC treatment of 800 VDC in buildings) were not read.

## 3. Battery energy storage and grid-interactive UPS (NFPA 855, UL 9540A, Microsoft/Eaton)

### Takeaway
NFPA 855 (2023) applies once lithium-ion ESS aggregate exceeds 20 kWh per fire area, which captures most Li-ion UPS rooms. UL 9540A test data is needed for groups above 50 kWh or close spacing. The 2026 edition reportedly adds large-scale fire testing. Microsoft's Dublin site, with Eaton UPS and Enel X aggregation, showed lithium-ion UPS selling fast frequency response (DS3, Ireland). Capacity figures were not disclosed.

### Cited Findings
- NFPA 855 (2023) Table 1.3: the lithium-ion threshold is 20 kWh (72 MJ) aggregate per fire area or outdoor installation. The values are nameplate or maximum stored energy, not usable energy (snippet). — [ACP ESS Codes Overview, 28 Jun 2023](https://cleanpower.org/wp-content/uploads/2023/07/ACP-ES-Product-6-ESS-Codes-and-Standards-Overview-6.28.23.pdf); [WA State Register](https://lawfilesext.leg.wa.gov/Law/WSR/2023/15/23-15-046.htm)
- UL 9540A data is required where group energy exceeds 50 kWh, where groups are spaced less than 0.9 m (3 ft) apart, or where stored energy exceeds the NFPA 855 Table 9.4.1 maximum of 600 kWh for lithium-ion (snippet). — [ZincFive blog Part 2](https://zincfive.com/blog/ensuring-ess-safety-in-data-centers-with-nfpa-855-part-2/) [VENDOR: ZincFive sells nickel-zinc UPS batteries]
- The AHJ may use a UL 9540A report to waive limits for units above 50 kWh, or above 250 kWh for listed pre-engineered systems. — [Vertiv white paper](https://prep.vertiv.com/490199/globalassets/documents/white-papers/vertiv-lib-and-fire-codes-wp-en-na-sl-70718-web_322437_0.pdf) [VENDOR]
- Data center professionals have warned that NFPA 855's broadened scope could change UPS deployment practice and might be applied to existing facilities. — [Data Center Frontier](https://www.datacenterfrontier.com/energy/article/11429677/new-nfpa-battery-standard-could-impact-data-center-ups-designs)
- The NFPA 855 2026 edition reportedly requires large-scale fire testing alongside UL 9540A (snippet; secondary). — [NFPA 855 A2025 first draft responses](https://docinfofiles.nfpa.org/files/AboutTheCodes/855/855_A2025_ESS_AAA_FD_PIResponses.pdf)
- Microsoft and Eaton, Dublin:
  - The grid-interactive UPS provides fast frequency response, and the project is said to reduce diesel generator use.
  - Enel X takes the battery asset into Ireland's DS3 system-services market.
  - The UPS reportedly tracks grid data at 12 ms intervals.
  - Microsoft replaced lead-acid with lithium-ion.
  - Announced in 2022. Microsoft says it plans to replicate the approach globally.
  - Capacity shared with the grid was not disclosed.
  
  — [Microsoft News](https://news.microsoft.com/source/features/sustainability/ireland-wind-farm-datacenter-ups/); [Energy-Storage.news](https://www.energy-storage.news/microsoft-data-centre-tries-out-grid-interactive-ups-battery-storage); [DCD](https://www.datacenterdynamics.com/en/news/microsoft-teams-up-with-eaton-for-grid-interactive-ups-at-dublin-data-center)
- A Baringa analysis cited by Microsoft projects that about 2 Mt CO2 could be avoided in 2025 if grid-interactive UPS replaced fossil grid services in Ireland and Northern Ireland. This is a projection. — [Microsoft News](https://news.microsoft.com/source/features/sustainability/ireland-wind-farm-datacenter-ups/)
- Eaton/Microsoft white paper on grid-interactive data centres [VENDOR; not read]. — [Eaton](https://www.eaton.com/gb/en-gb/markets/data-centers/transform-your-power/energy-aware/eaton-microsoft-grid-interactive-data-center-whitepaper.html)

### Inferences
- BOQ and scope effects of NFPA 855 compliance for Li-ion UPS:
  - fire-rated battery rooms or fire areas sized to the threshold quantities;
  - explosion control (deflagration venting or exhaust ventilation per NFPA 68/69) and gas detection;
  - spacing rules that drive room area (m²);
  - UL 9540A test reports as a submittal and procurement requirement.
  
  These are measurable items that lead-acid or VRLA-era specifications often did not include.
- Grid-interactive UPS adds:
  - bidirectional metering and protection relays;
  - utility and aggregator interface (SCADA) work;
  - extra battery capacity above the ride-through autonomy requirement.
  
  It also creates contract issues: revenue-share, battery degradation and warranty, and who bears the lost-resilience risk. These belong in the employer's requirements and the O&M agreement, not the EPC lump sum.

### Gaps
- No public cost premium was found for grid-interactive UPS over a standard UPS, nor a site capacity (MW or MWh) for Dublin.
- The final 2026 NFPA 855 changes for data centers were not confirmed from NFPA's own text.

## 4. On-site bridging power (gas turbines, reciprocating engines, fuel cells) and behind-the-meter arrangements

### Takeaway
From 2024 to 2026 AI campuses moved to behind-the-meter gas while waiting for grid connection. Examples:
- VoltaGrid: 2.3 GW for Oracle/Stargate in Texas;
- GE Vernova: 29 aeroderivative turbines, about 1 GW;
- Brookfield: up to USD 5 B for Bloom fuel cells.

Jefferies estimates 8–10 GW of data-center gas turbines through 2030. Some developers say "bridge" power is becoming permanent.

### Cited Findings
- Jefferies analysts treat on-site turbines as a bridge while grid interconnection is delayed, and estimate about 8–10 GW of gas turbines for data centers through 2030. — [S&P Global Market Intelligence, Oct 2025](https://www.spglobal.com/market-intelligence/en/news-insights/articles/2025/10/data-center-developers-turn-to-distributed-behind-the-meter-power-94174247)
- VoltaGrid agreed to supply 2.3 GW of behind-the-meter gas generation to Oracle's Project Stargate in Texas. GE Vernova is supplying 29 stackable aeroderivative turbines of nearly 1 GW. — [S&P Global, Oct 2025](https://www.spglobal.com/market-intelligence/en/news-insights/articles/2025/10/data-center-developers-turn-to-distributed-behind-the-meter-power-94174247)
- Brookfield plans to invest USD 5 B to deploy Bloom Energy fuel cells at AI data centers. — [S&P Global, Oct 2025](https://www.spglobal.com/market-intelligence/en/news-insights/articles/2025/10/data-center-developers-turn-to-distributed-behind-the-meter-power-94174247)
- Bloom says its fuel-cell plants can be running within months, against the 9–12 months it cites for large turbines. It also says sites often stay on "bridge" turbines or engines longer than planned. [VENDOR, sponsored] — [Utility Dive sponsored](https://www.utilitydive.com/spons/behind-the-meter-power-an-effective-tool-for-bringing-large-utility-custom/833709/)
- Caterpillar promotes reciprocating-engine bridge power for speed to revenue [VENDOR; not read]. — [Cat white paper](https://www.cat.com/en_GB/by-industry/electric-power/Articles/White-papers/bridge-power-solutions-for-data-centers.html)
- A speaker at a Data Center Frontier event rejected the "bridge power" label: on-site generation is becoming a permanent energy system. — [Data Center Frontier, "Power First"](https://www.datacenterfrontier.com/energy/article/55403280/power-first-ai-data-centers-become-energy-systems)
- In Saudi Arabia, procurement options include regulated grid supply, behind-the-meter generation, hybrid arrangements and renewable PPAs. Most large loads are currently served by gas-fired generation. — [Greenberg Traurig, 5 Jan 2026](https://www.gtlaw.com/en/insights/2026/1/saudi-arabias-data-centre-expansion-regulatory-framework-and-strategic-considerations)
- I could not confirm xAI Memphis turbine details in this pass.

### Inferences
- Bridging power is often procured as a separate energy-as-a-service or tolling agreement, not inside the MEP EPC. The QS must set the interface: MV switchgear, synchronisation and protection, gas supply, emissions permitting, noise, and fuel metering.
- For the BOQ, it changes:
  - the standby generator count, since gensets may become N+1 behind a prime-power plant;
  - MV ring and switchgear;
  - land and civil works for turbines or engine halls;
  - gas pipework and regulating stations;
  - selective catalytic reduction (SCR) for emissions.
- Contract risk: decommissioning or relocating bridge assets when the grid arrives (demobilisation provisional sum). Also the take-or-pay terms in power-purchase agreements.

### Gaps
- No public USD/kW installed cost was found for aeroderivatives, reciprocating engines or SOFC in data-center service.
- No independent schedule data was found beyond the vendor claims.

## 5. Data center heat reuse (EU EED 2023/1791, German EnEfG, Nordic examples)

### Takeaway
EU Directive 2023/1791 (OJ L 231, 20 Sep 2023) sets two obligations:
- reporting for data centres with an IT power demand of at least 500 kW (Art. 12);
- a duty for data centres above 1 MW total rated energy input to use waste heat unless it is not feasible (Art. 26). Secondary sources disagree on paragraph 6 or 7 and on the wording of the test.

German EnEfG § 11 is far more prescriptive. New data centres must meet:
- PUE ≤ 1.2;
- a reused-energy share of 10% from 1 Jul 2026, 15% from 1 Jul 2027 and 20% from 1 Jul 2028;
- 100% renewable electricity from 1 Jan 2027.

### Cited Findings
- Directive (EU) 2023/1791 was adopted 13 Sep 2023 and published in OJ L 231 on 20 Sep 2023. It recasts Directive 2012/27/EU.
  - Recital 85: data-centre reporting covers energy performance, water footprint and demand-side flexibility, on a common EU template.
  - Recital 86: reporting covers server rooms plus cooling, lighting, batteries and UPS.
  
  — [EUR-Lex](https://eur-lex.europa.eu/eli/dir/2023/1791/oj/eng)
- Art. 12 reporting applies to data centres with an installed IT power demand of at least 500 kW. — [Bird & Bird, 2024](https://www.twobirds.com/en/insights/2024/germany/rechenzentren-und-abwaerme-ein-ueberblick-ueber-die-gesetzlichen-vorgaben-zur-abwaermenutzung)
- Data centres with total rated energy input above 1 MW must use waste heat or other recovery applications unless this is technically or economically not feasible. — [Travers Smith](https://www.traverssmith.com/knowledge/knowledge-container/too-big-to-ignore-regulating-the-data-centre-boom/); [Covington, Apr 2025](https://www.cov.com/-/media/files/corporate/publications/2025/04/the-eus-energy-efficiency-directive-and-its-impact-on-datacenters.pdf)
- Two conflicts in the secondary sources, not resolved against the text:
  - Danfoss words the test as "technically and economically", while Travers Smith and Ramboll use "or".
  - The paragraph is cited as Art. 26(6) by eco and as 26(7) by ODYSSEE-MURE.
  
  — [Danfoss](https://www.danfoss.com/en/markets/buildings-commercial/shared/data-centers/data-center-policies-in-the-eu/); [ODYSSEE-MURE](https://www.odyssee-mure.eu/private/workshop-papers/rome-2024/4_2-Round-table-Waste-Heat.pdf)
- Delegated Regulation (EU) 2024/1364 sets the data-centre rating scheme, and its Annex VII KPIs include waste-heat utilisation. Commission Recommendation (EU) 2024/2395 gives guidance on Art. 26. Transposition was due by 11 Oct 2025 (snippet). — [EUR-Lex Reg 2024/1364](https://eur-lex.europa.eu/eli/reg_del/2024/1364/oj); [EUR-Lex Reco 2024/2395](https://eur-lex.europa.eu/eli/reco/2024/2395/oj/eng)
- EnEfG § 11, fetched from the official statute site:
  - Existing data centres (operating before 1 Jul 2026): PUE ≤ 1.5 from 1 Jul 2027 and ≤ 1.3 from 1 Jul 2030.
  - New data centres: PUE ≤ 1.2, and an energy reuse factor (ERF) per DIN EN 50600-4-6 of at least 10%, 15% or 20% for start of operation from 1 Jul 2026, 2027 or 2028.
  - Both targets are measured as annual averages within 2 years of commissioning.
  - Power used only to upgrade waste heat (heat pumps) is excluded from PUE.
  - Renewable electricity: 50% from 1 Jan 2024 and 100% from 1 Jan 2027.
  - Exemptions: a signed agreement with a municipality or heat-network operator, with an investment plan, a split of connection-line cost and a heat price, for a network within 10 years; or a heat-network operator declining a cost-price offer within 6 months when the data centre provides infrastructure such as a heat transfer station.
  
  — [gesetze-im-internet.de § 11 EnEfG](https://www.gesetze-im-internet.de/enefg/__11.html)
- Scope: the EnEfG data-centre duties apply from 300 kW non-redundant nominal connected load (snippet; in another section, not verified in § 11). A government draft amendment of 24 Jun 2026 keeps the reuse minimums but relaxes PUE for existing sites. — [Gleiss Lutz](https://www.gleisslutz.com/en/know-how/data-centre-update-draft-bill-amend-energy-efficiency-act); [TÜV](https://consulting.tuv.com/aktuelles/datacenter/enefg-im-rechenzentrum)
- Nordic example, Meta Odense (Tietgenbyen), Denmark:
  - District-heating water passes through the data centre's cooling coils, then ammonia heat pumps lift it to 70–75 °C.
  - About 45 MW of heat output, a planned 215,000 MWh/yr recovered, and more than 12,000 homes.
  - Ready for operation in late 2019. Designed by Ramboll for Fjernvarme Fyn.
  
  — [Ramboll](https://www.ramboll.com/projects/energy/meta-surplus-heat-to-district-heating)
- Conflicting figures for Odense: TechRadar reports about 165,000 MWh and about 11,000 households (Fjernvarme Fyn, 2025). — [TechRadar](https://www.techradar.com/pro/finally-some-good-usage-this-danish-data-center-is-providing-heat-to-power-thousands-of-household-radiators)
- Air-cooled data-centre heat is low-grade and usually needs heat pumps to reach network temperature. — [DTU](https://www.compute.dtu.dk/english/news/2022/11/five-answers-about-integrating-waste-heat-from-data-centres)

### Inferences
- In Germany, heat reuse is a measurable scope item, not an option:
  - heat-recovery heat exchangers and plate heat exchangers (PHEs);
  - a heat transfer station at the boundary;
  - heat pumps, which carry their own MEP power load outside PUE;
  - piping to the plot boundary;
  - ERF metering per EN 50600-4-6.
- The demarcation point, either the heat transfer station or the plot boundary, should be fixed in the contract because the statute ties exemptions to who builds the connection line.
- Liquid cooling (DTC at 40–50 °C return, for example) raises the reuse grade and lowers heat-pump capex. This is a value-engineering link worth noting for the cooling chapters.

### Gaps
- The exact wording of EED Art. 26 was not read; the EUR-Lex fetch was truncated before the articles.
- No published EUR/kW cost was found for heat-recovery plant.
- Swedish and Finnish examples (Stockholm Data Parks, Microsoft/Fortum Espoo) were not researched in this pass.

## 6. Prefabricated / modular power and cooling skids (eHouses, prefabricated power modules)

### Takeaway
Vendors claim schedule reductions of 30–80%, depending on what is measured. Schneider WP 218 is the most rigorous study found. It compares a 440 kW prefabricated design with a traditional build and finds about 2% capex saving, close to parity. Larger claims are TCO or speed-to-revenue figures. No independent eHouse study was found.

### Cited Findings
- Schneider Electric White Paper 218 (440 kW quantitative comparison) found roughly equal capex, with about 2% saving for prefabricated, and noted that results depend heavily on assumptions. [VENDOR] — [Schneider WP218 PDF](https://download.schneider-electric.com/doc/SPD_VAVR-9U4PPA_EN/WP218R0.pdf); [DCD listing](https://datacenterdynamics.com/en/whitepapers/quantitative-analysis-of-a-prefabricated-vs-traditional-data-center)
- A separate Schneider page claims about 30% TCO saving and 6–9 months from design sign-off to operation for modular builds. [VENDOR] — [Schneider modular](https://se.com/hk/en/work/solutions/for-business/data-centers-and-networks/modular)
- ABB claims up to 30% better lead times with eHouse and skid prefabrication, rising to about 50% when combined with pre-designed solutions. [VENDOR] — [ABB brochure PDF](https://library.e.abb.com/public/32c6aaf0740d4a2f927fc712518d9400/Modular%20prefabricated%20solutions%20speed%20DC%20deployment_Brochure_Final.pdf)
- A sponsored case on a Compass hyperscale campus reports on-site installation per prefabricated pod falling from 75.5 h to 15 h, an 80% reduction. [VENDOR, sponsored] — [Data Center Frontier](https://www.datacenterfrontier.com/sponsored/article/55416347/the-case-for-prefabricated-power-in-ai-data-centers)
- Vertiv PowerNexus and Flex market prefabricated power modules [VENDOR; not read]. — [Vertiv brochure](https://www.vertiv.com/4ad7ce/globalassets/products/facilities-enclosures-and-racks/integrated-solutions/vertiv-powernexus/vertiv-prefabricated-power-solutions-brochure.pdf); [Flex ebook](https://flex.com/downloads/ebook-prefabricated-modular-data-center-solutions)

### Inferences
- Measurement shifts from NRM2-style itemised work sections (switchgear, cables and containment measured separately) to a lump sum per skid or eHouse with a performance specification. That loses unit-rate transparency for variations, so require a priced schedule of components inside each module.
- Demarcation and cash flow:
  - define the factory acceptance test (FAT) as a payment milestone;
  - set vesting and title transfer for off-site goods, which needs advance-payment and vesting bonds;
  - assign responsibility for transport, craneage and lifting;
  - define the interface terminations (MV in, LV out, controls).
- Schedule value comes mainly from earlier revenue, not capex. The QS should present it as avoided prolongation or time-related preliminaries, plus earlier revenue, rather than as unit-rate savings.

### Gaps
- No independent or peer-reviewed cost study of eHouses or power skids was found.
- No GCC-specific prefabrication data was found, for example on desert transport or factory-testing locations.

## 7. Embodied carbon (RICS WLCA 2nd ed., iMasons Climate Accord, OCP)

### Takeaway
The RICS WLCA 2nd edition (Sept 2023, effective 1 Jul 2024) is mandatory for RICS members doing whole-life carbon assessments. It covers all built assets, aligns with ICMS 3rd edition and requires stage-based contingency. OCP and iMasons published an Embodied Carbon Disclosure base specification in Oct 2025, aimed at equipment-level EPD data for MEP and IT equipment. I found no sourced figure for the MEP share of data-center embodied carbon.

### Cited Findings
- RICS Whole Life Carbon Assessment for the built environment, 2nd edition:
  - Dated Sept 2023, effective 1 Jul 2024, replacing the 1st edition.
  - Covers buildings and infrastructure.
  - Distinguishes manufacturer-specific, sector-average and generic data.
  - Introduces a mandatory contingency that varies with stage and data quality.
  - Aligns with ICMS 3rd edition.
  - Its numerical assumptions are UK-based, so other regions must localise inputs.
  
  — [RICS standard PDF](https://www.rics.org/content/dam/ricsglobal/documents/standards/Whole_life_carbon_assessment_PS_Sept23.pdf); [RICS news](https://rics.org/news-insights/wlca-standard-2nd-edition-now-in-full-effect)
- OCP Foundation and iMasons Climate Accord jointly published an Embodied Carbon Disclosure base specification in Oct 2025. It covers data-center infrastructure equipment (MEP) and IT hardware (snippet). — [OCP blog](https://www.opencompute.org/blog/open-compute-project-foundation-and-imasons-develop-taxonomy-for-carbon-disclosure)
- iMasons says embodied carbon is harder to tackle than operational energy because there is no universal labelling. Its governing body, which includes AWS, Google and Meta, has urged suppliers to publish more EPDs. — [DCD](https://datacenterdynamics.com/en/news/imasons-proposes-work-on-data-centers-embodied-carbon); [Supply Chain Dive, 2024](https://www.supplychaindive.com/news/climate-suppliers-issue-epds-scope-3-ghg-data-centers-aws-google-meta/721699/)
- Schneider Electric committed to share third-party-audited Product Environmental Profiles with ICA signatories for Scope 3 reporting. [VENDOR] — [Schneider press release](https://se.com/ww/en/about-us/newsroom/news/press-releases/schneider-electric-furthers-its-commitment-to-infrastructure-mason’s-climate-accord-accelerating-advances-in-data-center-sustainability-63638d4c2accfe67a903d787)

### Inferences
- Under the RICS WLCA framework, which is aligned with ICMS 3, the BOQ structure can double as the carbon-assessment quantity basis. MEP items such as generators, UPS, switchgear, chillers, copper and steel containment need EPD-backed factors. This is a direct reason to require EPDs in the procurement requirements for vendor packages.
- Contract implication: carbon caps or reporting obligations should be in the employer's requirements, with EPD submittals as a condition of package award.

### Gaps
- No sourced MEP percentage of data-center upfront embodied carbon was found. Figures often quoted informally should not be used without a source.
- The full OCP/ICA specification was not read.

## 8. GCC specifics (Saudi Arabia and UAE): water and WUE, utility connections, fire codes, incentives

### Takeaway
Primary GCC sources are thin online. What I found:
- The national data-centre strategy (MCIT, with SDAIA) targets about 1.5 GW by 2030.
- SERA and the Ministry of Energy set grid-connection and tariff rules.
- Incentives are negotiated deal by deal, according to an MCIT catalogue.
- DEWA prices connections by connected-load slab and may require 400/132 kV sources for very large loads.

Saudi data-centre water-use estimates range from about 15–20 bn L (2024–25) to about 88 bn L by 2030, and these figures conflict. I did not retrieve primary text on SBC 801 or the UAE Fire & Life Safety Code for data centres.

### Cited Findings
- **Strategy and regulators (Greenberg Traurig, 5 Jan 2026):**
  - MCIT launched a national data-centre strategy in 2025, with SDAIA collaborating. It targets about 1.5 GW by 2030.
  - SDAIA is linked to the "Hexagon" government data-centre initiative.
  - SERA and the Ministry of Energy set grid-connection, capacity-allocation, tariff and reliability rules.
  - Most large loads are currently gas-fired.
  - Pricing must be assessed project by project.
  
  — [Greenberg Traurig](https://www.gtlaw.com/en/insights/2026/1/saudi-arabias-data-centre-expansion-regulatory-framework-and-strategic-considerations)
- **Water policy (same source):** developers are expected to use high-efficiency or closed-loop cooling where feasible, respect groundwater abstraction limits, and monitor water and energy in real time. — [Greenberg Traurig](https://www.gtlaw.com/en/insights/2026/1/saudi-arabias-data-centre-expansion-regulatory-framework-and-strategic-considerations)
- **Incentives:** the MCIT AI data-centre service catalogue (2026) says incentives are allocated deal by deal, and it lists competitive industrial tariffs and help with water supply. A separate analysis says the Cloud Computing Special Economic Zone offers tax, regulatory, power and network benefits (snippet). — [MCIT AI Service Catalog 2026 PDF](https://www.mcit.gov.sa/sites/default/files/2026-08/AI%20Service%20Catalog%20MCIT%202026.pdf)
- **Humain financing:**
  - The National Infrastructure Fund and Humain signed financing of up to SAR 2.5 bn (about USD 667 M).
  - An earlier framework was up to SAR 4.5 bn for up to 250 MW (Jan 2026).
  - National Grid SA signed an electricity-provision agreement for Humain's Riyadh project in Sept 2026, with no load, connection point or tariff disclosed (snippet).
  
  — [Capacity](https://capacityglobal.com/news/sar-2-5bn-infra-humain-ai-deal-why-build-for-1gw-when-funding-25mw/); [Sabq](https://sabq.org/en/article/9amwyyq); [vision2030.ai](https://vision2030.ai/analysis/saudi-ai-data-centre-power-agreements-september-2026/)
- **Tariffs vs utilisation:** a KAPSARC discussion paper finds that utilisation and hardware efficiency affect AI data-centre project cost more than electricity tariffs do (snippet). — [KAPSARC](https://www.kapsarc.org/media/osyfiocu/dp00503-v1.html)
- **Water-use estimates:** Saudi data-centre water use is about 15 bn L (2024). Another projection puts it at about 20 bn L (2025) rising to about 88 bn L by 2030, roughly 4% of national water output. Both are preliminary research cited in the press (snippet). — [Arab News](https://www.arabnews.pk/node/2598372); [Enterprise AM, 19 Nov 2026](https://enterpriseam.com/ai/2026/11/19/water-not-chips-or-capital-may-be-the-biggest-barrier-to-the-gulfs-ai-ambitions/)
- **Cooling-method conflict:**
  - Arab News says most Saudi data centres use hybrid cooling.
  - Enterprise AM says hyperscale sites rely mainly on conventional water-intensive air cooling.
  - Computer Weekly says evaporative cooling can raise water use 5–10 times, and expects dry or hybrid designs with WUE typically below 0.2 L/kWh.
  
  — [Arab News](https://www.arabnews.pk/node/2612606); [Enterprise AM](https://enterpriseam.com/logistics/2025/12/24/saudi-poised-to-lead-the-gulfs-data-center-boom/); [Computer Weekly](https://www.computerweekly.com/news/366640511/Designing-watersmart-AI-datacentres-in-GCC-and-MENA)
- **Humain sites:** Humain's 100 MW data centres in Riyadh and Dammam are expected to start operating in 2026. — [Computer Weekly](https://www.computerweekly.com/news/366640511/Designing-watersmart-AI-datacentres-in-GCC-and-MENA)
- **DEWA (Dubai):**
  - The connection-cost calculator prices by total connected load in slabs (14 bands), regardless of cable length or route.
  - The Major Project Guidelines (Jun 2021) require connected load split into general and cooling loads, plus expected peak demand. Very large loads needing several 132/11 kV substation plots may need a 400/132 kV source.
  - Eligible D33 companies get a 25% discount on the standard connection charge.
  
  — [DEWA calculator](https://dewa.gov.ae/en/builder/electricity-network-services/electricity-connection-cost-calculator); [DEWA Major Project Guidelines 2021](https://www.dewa.gov.ae/-/media/Files/Suppliers-and-Partners/Major-Project-Guidelines--Electricity--Jun-2021.ashx)
- **UAE fire:** UAE Civil Defence-approved clean-agent systems are typically designed to NFPA 2001. This is a supplier claim, not a code citation. The Dubai Municipality UAE Fire Code circular (2022) that came up concerns insulation materials. — [DM circular](https://www.dm.gov.ae/wp-content/uploads/2022/05/DM-DCLD-RD-DP32-5119-Type-1-UAE-Fire-Code-R2.pdf)
- **Clean agents in high-airflow white space:** FSSA/FIA research examined how high airflow and aisle containment affect clean-agent performance in data centres. — [FIA/FSSA research PDF](https://www.fia.uk.com/static/a9985492-a240-43c9-a73a38f39d00f51d/c2bf2f32-61cd-44d9-b5c9b3baab77a545/Effect%20of%20High%20Airflow%20and%20Aisle%20Containment%20on%20Clean%20Agent%20System%20Performance%20in%20Data%20Centers.%20%20Research%20by%20FSSA%20&%20FIAA.pdf)

### Inferences
- In GCC BOQs, the choice between dry (adiabatic) coolers and evaporative or cooling-tower designs drives:
  - water-treatment plant;
  - storage tanks for the autonomy period, a cost and space item;
  - treated sewage effluent (TSE) or desalinated make-up connections;
  - a larger dry-cooler footprint and fan power at 45–50 °C ambient.
  
  Specify WUE and design ambient temperature in the employer's requirements so the trade-off is priced clearly.
- DEWA's slab-based charge makes connected-load declarations (general vs cooling split) a direct cost lever. Over-declaring raises the connection charge.
- In Saudi Arabia, connection terms are bilateral (SERA rules plus negotiated SEC or National Grid SA agreements), so grid-connection cost and timing should sit with the employer as a defined risk or provisional sum, not with the EPC contractor.
- Bespoke incentives (tariff, water, land) mean the cost plan should show base case and incentive case separately.

### Gaps
- SEC / National Grid SA published connection-charge schedules for large loads were not found.
- Primary text of SBC 801 (Saudi Fire Code) data-centre provisions and the UAE Fire & Life Safety Code data-centre chapter was not retrieved. Both are on official portals (sbc.gov.sa; UAE Civil Defence), which need direct access.
- No operator-disclosed WUE was found for a specific Riyadh or UAE hyperscale site.
- Cloud Computing SEZ (Riyadh) rules were not read from the primary source (MISA/ECZA).
