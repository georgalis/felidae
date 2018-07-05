# Felidae Information Flows 

This repository is a work plan and source code product for
Felidae information services. http://www.felidaefund.org/

A critical aspect of Felidae research is natural habitat image
capture, by motion sensing video and still cameras. Mountain
lions, bobcats, owls, possum, deer, skunk, rats, rabbits and
humans are captured by cameras in remote locations, in addition to
leaves rustling in the breeze and similar false triggers. Ratios
of activities, through image categorization, noninvasively
measures ecology health and vitality. But, categorization of
retrieved media is a time intensive task, currently a
critical bottleneck for the research.

"using deep-learning technology can save a tremendous amount of time for biology researchers and the human volunteers that help them by labeling images" (p 9, http://www.pnas.org/cgi/doi/10.1073/pnas.1719367115 Automatically identifying, counting, and describing wild animals in camera-trap images with deep learning

https://news.mongabay.com/wildtech/2018/06/species-recognition-shifts-into-auto-with-neural-networks/
Species recognition shifts into auto with neural networks

This data flow refresh scales and improves the existing Felidae camera trap to data report process.
Automation is used to standardize formats and accelerate the pipeline wherever possible.
An infrastructure of modular, discrete components is designed to meet today's needs, and remain flexable for future scale and changing needs.

The key enhancements driving this information flow update are:
* Integration of [TensorFlow](http://www.tensorflow.org/) machine learning to auto categorize the images.
* Metadata, schema, and flow standardization to facilitate [R Project](http://www.r-project.org) statistical analysis.
* Data query and access simplification, to facilitate 3rd party research collaboration.
* Improved backup pipeline, for disaster recovery.

## Refresh Overview

Images and video are recorded in strategically placed camera traps.
Periodically the memory cards are retrieved and needful field data is noted.
A Raspberry Pi class wifi device receives the media and packages it with notebook annotations entered through a web interface.
The media is then categorized within the package by an AI tool.
A web interface presents pre-categorized media for manual corrections and/or upload to master storage (and duplication to offsite backup).
Additional corrections and/or AI training takes place from the master, until packages are exported as CSV and media files.
Stastical reports are generated from the exported data and uploaded back to the master data store.
Any number of Raspberry Pi class devices may be used with an expected to cost of $20-$50 per site, or $15 each for an upload only version (NodeMCU class). This overview is depicted in the a [Felidae-Flows](plan/Felidae-Flows.pdf) pdf graphic.


## Design
### Glossary
    Major
    Minor
    Unit
    Risk
    Plan
    Execution
    Check
    Early
    Middle
    Final

### Process
Since this product is implemented and consumed primarily by
volunteers, with transient time availability and potential
for high turn over, a special focus on planning documentation,
automated operations and deployment robustness will be applied.

The general implementation pattern consists of four phases feeding
each other in a continuous loop cycle: Risk Analysis, Planning,
Execution and Quality Check. Three degrees of detail compose
each phase: Major, Meta and Unit components. Likewise, the degrees
of development are expected to mature in Early, Middle and Final
stages of the project refinement. 

This process allows for each of the four phases to be developed
asynchronously, yet becoming tightly coupled as development
matures. It is loosly based on the "Delivery Controls"
and "Objective Improvement" slides in this operations deck
https://github.com/georgalis/pub/blob/master/know/Operations.pdf

![Delivery Controls](plan/DeliveryControls.jpg)

![Objective Improvement](plan/ObjectiveImprovement.jpg)

### Design Outline
* Major - broad goals
  * Viability (Risk) - key concerns
  * Twin (Design) - overall storyboard
  * Administer (Execute) - implementation report
  * Performance (Check) - utility validation
* Meta - Major to Unit translation
  * Compliance (Risk) - plan implementation
  * Primitive (Design) - building blocks
  * Registration (Execute) - resource provisioning
  * Function (Check) - design/built alignment
* Unit
  * Improve (Risk) - identify gaps
  * Specification (Design) - configuration and automation
  * Implementation (Execute) - setup
  * Test (Check) - confirm specification
* Product

### Major

New remote device connects to domestic internet and receives
camera trap media, integrates with data entered through web
interface and uploads to master. Master device receives remote
device data, initiates backup, supports TensorFlow training,
facilitates query and export.

####  Viability (Risk)
* Hardware Disaster Recovery
* Data Disaster Recovery
* Operational Diagnostic Tools
* Future Flexability
* Reliability
* Ease of use
* Implementation cost
* Ongoing cost
####  Twin (Design)
* Discrete Modular Components
  * New remote device connects to domestic internet and receives camera trap media.
    * Remote device auto transfers media data to local storage.
    * Remote device presents field volunteer with web interface for media meta data entry.
    * Remote device packages exif and meta data and auto categorizes media.
    * Remote device presents media media by category or meta data query.
    * Remote device accepts manual media categorization corrections and annotates media data.
    * Remote device synchronizes data to master.
    * Remote device reports workflow status.
  * New master device
    * Master receives new media packages.
    * Master presents data administrator with web interface for audit and corrections of field volunteer data entry
    * Master presents data administrator with web interface for deep learning training.
    * Master invokes local and offsite backup.
    * Master provides 3rd party A&A for exports.
    * Master provides training configuration for remote devices.
* Robust commodity hardware and software
* Instantiation 
* Offsite Backup
* Data
  * Schema
  * Flows [Felidae-Flows](plan/Felidae-Flows.pdf)
  * Translation (old to new format)
* Hardware autoconfiguration, minimal setup
* Web interface - low barrier use, zero install
  * Workflows
  * Markup
* event logs, repair table
####  Administer (Execute)
####  Performance (Check)
  * User validation
###  Meta
Alignment of fundimental algorhythum and physical inventory.
####  Compliance (Risk)
####  Primitive (Design)
* [Components](plan/readme.md) : Archive for archive, S3 for simple storage share, ESB for elastic, ingest new data to S3 and drop duplicates.
####  Registration (Execute)
* Requirement Traceability Matrix
####  Function (Check)
###  Unit
####  Improve (Risk)
####  Specification (design)
* Waterfall
* Requirement breakout
* Glacier - low cost disaster storage, 
  * https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html
  * https://aws.amazon.com/glacier/pricing/
####  Implementation (Execute)
* Vendors
* Approvals
* Procurement
* Bootstrap
* Configuration Management
* Implementation Report
####  Test (Check)
###  Product

`,,,^..^,,,~`
