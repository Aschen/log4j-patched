# for version in $(cat ./ver.txt);
# do
#   wget https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/$version/log4j-core-$version.jar -P log4j/ &
# done

# wait

cd log4j/

for version in $(cat ../ver.txt);
do
  echo $version
  zip -q -d log4j-core-$version.jar org/apache/logging/log4j/core/lookup/JndiLookup.class
done
