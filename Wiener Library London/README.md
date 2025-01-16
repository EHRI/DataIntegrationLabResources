# The Wiener Holocaust Library

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/gb-003348)

The Wiener library offers an API where it is possible to download the contents in a custom XML model. The import workflow is divided in three different ingestion processes which will ingest different levels and types of descriptions:
- Collections
- Pre-1963 correspondance subseries
- Pre-1963 correspondance nested collections

The configuration for each process is as follows:
- Collections:
    1. Create a dataset using the URLSet harvesting option. Paste the elements contained in the collectionsURLSet.tsv file. It is possible that a header containing the token for the API is required.
    2. Add the following ECT transformation:
        1. soutron_to_ead.tsv
    3. Convert the files and ingest them with no further options.

- Pre-1963 correspondance subseries:
    1. Create a dataset using the URLSet harvesting option. Paste the elements contained in the pre1963info.tsv file. It is possible that a header containing the token for the API is required.
    2. Add the following ECT transformation:
        1. soutron_to_ead.tsv
    3. Convert the files and ingest them with no further options.

- Pre-1963 correspondance nested collections:
    1. Create a dataset using the URLSet harvesting option and indicating that the descriptions should be place beneath the description with id `gb-003348-wl3000_9_1`. Paste the elements contained in the pre1963.tsv file. It is possible that a header containing the token for the API is required.
    2. Add the following ECT transformation:
        1. soutron_to_ead.tsv
    3. Convert the files and ingest them with no further options.