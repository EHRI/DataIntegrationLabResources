# Vilna Gaon Museum of Jewish History

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/lt-002881)

The data is downloaded in JSON from the LIMIS API, then it is transformed to RDF/XML using ShExML with the mapping rules contained under the file convertFromJsonAPI.shexml.

1. Create one dataset per language (i.e., Lithuanian and English.)
    * For each of these datasets we have to associate the corresponding set of URLs: urlSetEng.tsv or urlSetLit.tsv. The URLs will call the ShExML WS in EHRI which, in turn, will download the JSON file from the API and transform the output to RDF/XML.
2. Add the following transformations:
    1. plain_rdf_to_ead.tsv (use parametersECT.json as the parameters, so namespaces in RDF/XML are recognised by the ECT tool.)
    * lang_to_eng.xsl (only for the English dataset)
3. Convert the files for each of the datasets and ingest them with no further options.