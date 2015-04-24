#cat *.txt | tr 'A-Z' 'a-z' | tr -sc 'A-Za-z' '\n' | sort | uniq > QueryRaw

#cat CID-Synonym-filtered | cut -f 2 | sort > CID-Synonym-filtered-Sorted

comm -12 CID-Synonym-filtered-Sorted RawQuery > Overlap.txt

#note that we may be introducing stereochemical isomers with the grep pulling up multiple pcids for some queries

cat *.pcid | sort | uniq > ChemGenCorpus.txt
