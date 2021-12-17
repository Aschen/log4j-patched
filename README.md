# Log4J Patched Dependency for Log4Shell

This repository aims to provide a patched version of the Log4J library for legacy system that can not be updated right away.

The patch consist in a modified version of the `log4j-core.x.x.x.jar` file following the [official recommandation](https://logging.apache.org/log4j/2.x/security.html) of the Apache foundation.

The modified version does not contains the `JndiLookup.class` class anymore.

### How to use it

First, **you shouldn't trust random people on internet**.

![internet dog](./misc/internet_dog.png)

This repository includes a script that allows to generated patched version of the library on your computer:
 - Download original library from a trusted source ([Maven](https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j-core))
 - Apply the patch by removing the `JndiLookup.class` file

```bash
version=2.8.2 # replace your desired version of log4j here

wget https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/$version/log4j-core-$version.jar

zip -q -d log4j-core-$version.jar org/apache/logging/log4j/core/lookup/JndiLookup.class
```

If you cannot apply the patch yourself, you can directly download the patched jar from this repository:
