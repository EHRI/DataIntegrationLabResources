# Jewish Public Library Archives Montreal

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/ca-005463)

The data is an EAD export from their AtoM instance. The format is quite compatible with the EHRI Portal one so only some little modifications are needed.

1. Create one dataset using the resources type "uploads".
2. Add the following transformations:
    1. normalize-ead-namespaces.xsl
    2. jplmontreal_atom_to_ehri.xsl
3. Convert the files and ingest them with no further options.