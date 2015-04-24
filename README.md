ChemicalEyes
============

Brief: Chemical Vision for non-chemists

Statement of the problem: Scientific literature is rich with research and references to small molecule chemicals. These diversity and similarity of the compounds mentioned are easily lost to the layperson. 

Statement of the solution: Detection of compound  mentions in plain text are used for the retrieval of structure and annotation (physicochemical properties,bioactivity, etc) information. The information is collated into a chemical space report after calculations have been made on the compounds in the set. An additional report will make homepages for each compound and add a grep report from the pubmed central corpus.


![ChemicalEyes](https://github.com/andrewdefries/ChemicalEyes/blob/master/ChemicalEyes.png)

Database files
==============

You can download the required files from Pubchem to perform operations locally

ftp://ftp.ncbi.nlm.nih.gov/pubchem/Compound/Extras/

Dependencies
=============

The following cheminformatics working environment has been tested on Debian (wheezy suggested) and Ubuntu (currently testing on Ectopic Unicorn 14.04).
```
#Or try line by line to see build errors
chmod +x cheminformatics_bootstrap 

./cheminformatics_bootstrap.sh

```
