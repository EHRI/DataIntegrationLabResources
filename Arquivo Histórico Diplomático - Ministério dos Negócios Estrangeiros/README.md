# Arquivo Histórico Diplomático - Ministério dos Negócios Estrangeiros

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/pt-005469)

The Arquivo Histórico Diplomático - Ministério dos Negócios Estrangeiros is able to provide their data through an OAI-PMH endpoint following Dublin Core standard. In addition they have created an ehri set inside the endpoint so all relevant collections and items can be found in it.

1. Harvest the files from the OAI-PMH endpoint.
2. Add the following transformations:
    1. oai_dc_to_ead.csv
    2. correct_false_dates.xslt
3. Convert the files and ingest with the ead2002.properties (a little modification to the default one was needed in order to correctly map the physfacet values).