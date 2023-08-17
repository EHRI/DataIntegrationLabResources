# Bundesarchiv

The Bundesarchiv offers an export through their Open Data portal ([https://open-data.bundesarchiv.de/](https://open-data.bundesarchiv.de/)). However, in the EHRI portal this information is spread in the different branches that the Bundesarchiv is divided on. Therefore, the process should be divided and customised per branch.

* Bundesarchiv, Koblenz (de-002579)
    1. Create a URLset for the Apex data using the TSV file named Bundesarchiv-Koblenz-URLset-Apex.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options
    4. Create a URLset for the Findbuch data using the TSV file named Bundesarchiv-Koblenz-URLset-Findbuch.tsv
    5. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    6. Convert the files and ingest them with no further options

* Bundesarchiv, Berlin-Lichterfelde (de-002429)
    1. Create a URLset for the Apex data using the TSV file named Bundesarchiv-Berlin-URLset-Apex.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options
    4. Create a URLset for the Findbuch data using the TSV file named Bundesarchiv-Berlin-URLset-Findbuch.tsv
    5. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    6. Convert the files and ingest them with no further options

* Bundesarchiv, Freiburg (Abteilung Militärarchiv) (de-002525)
    1. Create a URLset for the Apex data using the TSV file named Bundesarchiv-militaerarchiv-URLset-Apex.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options
    4. Create a URLset for the Findbuch data using the TSV file named Bundesarchiv-militaerarchiv-URLset-Findbuch.tsv
    5. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    6. Convert the files and ingest them with no further options

* Bundesarchiv, Dahlwitz-Hoppegarten (Zwischenarchiv) (de-002476)
    1. Create a URLset using the TSV file named Bundesarchiv-Zwischenarchiv-URLset.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options

* Bundesarchiv, Berlin-Tegel (Abteilung PA) (de-006146)
    1. Create a URLset using the TSV file named Bundesarchiv-Berlin-Reinickendorf-URLset.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options

* Bundesarchiv, Ludwigsburg (Unterlagen der Zentralen Stelle der Landesjustizverwaltungen zur Aufklärung nationalsozialistischer Verbrechen) (de-006145)
    1. Create a URLset using the TSV file named Bundesarchiv-Ludwigsburg-URLset.tsv
    2. Add the following transformations:
        * copy_otherfindaid.xsl
        * one_level_up.xsl
        * adapt-ead-bundesarchiv.xsl
        * remove_file_level.xsl
    3. Convert the files and ingest them with no further options