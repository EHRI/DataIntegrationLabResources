# USHMM - United States Holocaust Memorial Museum

[![See on the EHRI Portal](https://img.shields.io/badge/See_on-the_EHRI_Portal-83004c)](https://portal.ehri-project.eu/institutions/us-005578)

USHMM offers an export through ResourceSync which is generated from an internal scripting procedure. Due to the large amount of data, the datasets are divided by years so the EHRI portal can efficiently ingest them. Then, the ETL process is configured as follows:

1. Create the datasets and link them to the corresponding capability list link.
    * 1981
    * 1983
    * 1985
    * 1986
    * 1987
    * 1988
    * 1989
    * 1990
    * 1991
    * 1992
    * 1993
    * 1994
    * 1995
    * 1996
    * 1997
    * 1998
    * 1999
    * 2000
    * 2001
    * 2002
    * 2003
    * 2004
    * 2005
    * 2006
    * 2007
    * 2008
    * 2009
    * 2010
    * 2011
    * 2012
    * 2013
    * 2014
    * 2015
    * 2016
    * 2017
    * 2018
    * 2019
    * 2020
    * 2021
    * 2022
    * Collections
    * No Year
2. Add the following transformation:
    1. solr2ead.tsv
3. Convert the files and ingest them with the ehri3-ushmm.properties.