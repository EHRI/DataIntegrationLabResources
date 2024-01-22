# Data Integration Lab Resources for EHRI-3
This repository serves as a public archive for the data integration resources, and their application instructions, used during the [EHRI-3 project](https://www.ehri-project.eu/) inside WP9 T9.2.

## EHRI Portal ETL platform
All these resources are designed to be used inside the EHRI-3 ETL platform conceived as an interface for integrating XML sources in EAD archives which are then ingested in the EHRI Portal database. The documentation for this platform can be found [here](https://documentation.ehri-project.eu/en/latest/administration/institution-data/index.html#accessing-the-ead-manager). Even though the code for the ETL platform is tightly-coupled to the [EHRI Portal](https://portal.ehri-project.eu/) code base, it is possible that in the future the ETL platform could be delivered as a standalone package. For the ECT converter a standalone version can be found in the following [repository](https://github.com/EHRI/ehri-conversion-tools).

## Wide-applicability
As mentioned the ETL platform is bound to the EHRI Portal, however the resources are based in well-known standards so all of them can be applied independently to reach a similar solution. The used standards are as follows per phase:

* Extract: There are four options for data harvesting:
    * OAI-PMH: The data is taken from an OAI-PMH endpoint based in the [spec](https://www.openarchives.org/OAI/openarchivesprotocol.html).
    * ResourceSync: The files are recovered from a server compliant with the [ResourceSync spec](https://www.openarchives.org/rs/toc).
    * URLSet: Download of files based in the HTTP protocol.
    * Files upload: Simple file uploader from local files in the user's computer.
* Transform: Currently there are two types of mapping rules supported:
    * XSLT: Using a spec-compliant converter these resources can be applied outside the platform.
    * ECT: This tool has been designed in EHRI-2 to ease the writing of instructions to convert an XML file in EAD. It is based in XQuery and therefore all the rules defined in each field refer to XQuery statements. 
* Load: The load is based in the EAD2002 standard with the possibility to ingest EAD3 files too.

## Funding
This work has been carried out in the context of the EHRI-3 project funded by the European Commission under the call H2020-INFRAIA-2018–2020, with grant agreement ID 871111 and DOI 10.3030/871111.

