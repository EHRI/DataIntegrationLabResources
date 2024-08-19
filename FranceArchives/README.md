# FranceArchives

This is a generic workflow to integrate data from the FranceArchives site which is an aggregator for archival sources in France. The advantage of setting up the connection with this intermediate aggregator is the possibility to cover more archives in less time as most of the resources can be reused. As such, this folder contains the generic resources that are applied for all the different cases. Inside each case folder it is possible to find the particular resources that are applicable to the data of that specific institution.

While the FranceArchives is built around RiC, the SPARQL endpoint does not offer a good way to extract the hierarchy of the collections. Moreover, some specific collections failed while being fetched through it. Therefore, the legacy OAI-PMH is used for this integration. In general the workflow follows the steps described below:

1. Create one dataset using the URLset contained in the specific case folder.
2. Add the following general transformations:
    1. ead_oai_francearchives.xsl
    2. francearchives_attribution.xsl
    3. normalize-ead-namespaces.xsl
3. Convert the files for each of the datasets and ingest them using the ead2002_francearchives.properties.