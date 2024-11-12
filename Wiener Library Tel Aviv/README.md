# Wiener Library for the Study of the Nazi Era and the Holocaust, Tel Aviv University

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/il-002820)

The data can be accessed in RDF format from the Alma open data portal. For every top-level collection it is required to have a list of nested collections in order to download the content directly from their server, then they can be downloaded using the URLset functionality.  

1. Create one dataset for each one of the twelve top-level collections with URLset as the harvester method.
    * For each of these datasets we have to associate the corresponding set of URLs from the urlSets folder.
2. For the transformations we use a general mapping and a specific one for each top-level collection (under the top_level_info_xslt folder.)
    1. almardf2ead.tsv (use parametersECT.json as the parameters, so namespaces in RDF/XML are recognised by the ECT tool.)
    * add_top_collection_info_wiener_for_[?collection_name].xslt (change [?collection_name] for the name of the collection, take into account that for the collection "The Protocols of the Elders of Zion" this data is embedded in the almardf2ead.tsv mapping so this specific one is not needed.)
3. Convert the files for each of the datasets and ingest them with no further options.