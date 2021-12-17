# Usage: bash download-and-patch.sh 2.8.2

version=$1

wget https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/$version/log4j-core-$version.jar

zip -q -d log4j-core-$version.jar org/apache/logging/log4j/core/lookup/JndiLookup.class
