rm *.pcid

query=(`cat TrimListNoSpaces`)

for i in "${query[@]}"

do

name=(`echo $i | sed 's/ /_/g' | sed 's/-/_/g' | sed 's/,/_/g' | sed 's/(/_/g' | sed 's/)/_/g' | sed 's/\[/_/g' | sed 's/\]/_/g'`)

#the space problem is not solved
#cleaname=(`echo $i | sed 's/ /\s/g'`)

echo $cleaname
echo $name
echo $i search

#cat Query.sh | sed "s/myquery/$cleaname/g" > MyQuery.sh
cat Query.sh | sed "s/myquery/$i/g" > MyQuery.sh

chmod +x MyQuery.sh

./MyQuery.sh > $name.pcid


cat $name.pcid


done
