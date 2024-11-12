# Wiener Wiesenthal Institut für Holocaust-Studien

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/at-006006)

The data is exported from the ActaPro system in two different forms: EAD and custom-format XML files. For some collections (namely, VWA-SWI,IX and VWA-SWI,XI) the EAD export offers a hierarchical representation of the collections while for the other cases it is preferable to use the custom XML format as it offers more information.

For the XML files:
1. Create the top-level descriptions manually on the EHRI Portal.
2. Create one dataset for each of the created descriptions using the uploads as the harvesting method, and putting setting the option to nest the descriptions under the specified description between parentheses:
    * VWI-SWA,I (at-006006-vwi_swa-i)
    * VWI-SWA,II. (at-006006-vwi_swa-ii)
    * VWI-SWA,II.1A (at-006006-vwi_swa-ii-1_a)
    * VWI-SWA,II.3C (at-006006-vwi_swa-ii-3_c)
    * VWI-SWA,III (at-006006-vwi_swa-iii)
    * VWI-SWA,IV (at-006006-vwi_swa-iv)
    * VWI-SWA,VI (at-006006-vwi_swa-vi)
3. Add the following transformations:
    1. vwi_to_ead_series.tsv (with the parameters under parametersECT.json)
4. Convert the files for each of the datasets and ingest them with no further options.

For the EAD files:
1. Create the datasets for the description using the uploads harvester method and enable the option to nest the descriptions under the collection at-006006-vwi_swa:
    * VWI-SWA,IX.
    * VWI-SWA,XI.
2. Add the following transformations:
    1. one_level_up.xsl
    2. normalise_vwi_ead.xsl
    3. lang_to_deu.xsl
3. Convert the files for each of the datasets and ingest them using the ead_vwi.properties file.