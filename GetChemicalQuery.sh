cat *.txt | tr 'A-Z' 'a-z' | tr -sc 'A-Za-z' '\n' | sort | uniq > QueryRaw

cat CID-Synonym-filtered | cut -f 2 | sort > CID-Synonym-filtered-Sorted

comm -12 CID-Synonym-filtered-Sorted QueryFileRaw.txt > Overlap.txt
