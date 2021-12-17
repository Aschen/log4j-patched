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
 - [log4j-core-2.0.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.0.1.jar)
 - [log4j-core-2.0.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.0.2.jar)
 - [log4j-core-2.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.0.jar)
 - [log4j-core-2.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.1.jar)
 - [log4j-core-2.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.2.jar)
 - [log4j-core-2.3.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.3.jar)
 - [log4j-core-2.4.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.4.1.jar)
 - [log4j-core-2.4.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.4.jar)
 - [log4j-core-2.5.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.5.jar)
 - [log4j-core-2.6.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.6.1.jar)
 - [log4j-core-2.6.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.6.2.jar)
 - [log4j-core-2.6.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.6.jar)
 - [log4j-core-2.7.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.7.jar)
 - [log4j-core-2.8.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.8.1.jar)
 - [log4j-core-2.8.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.8.2.jar)
 - [log4j-core-2.8.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.8.jar)
 - [log4j-core-2.9.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.9.0.jar)
 - [log4j-core-2.9.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.9.1.jar)
 - [log4j-core-2.10.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.10.0.jar)
 - [log4j-core-2.11.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.11.0.jar)
 - [log4j-core-2.11.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.11.1.jar)
 - [log4j-core-2.11.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.11.2.jar)
 - [log4j-core-2.12.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.12.0.jar)
 - [log4j-core-2.12.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.12.1.jar)
 - [log4j-core-2.12.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.12.2.jar)
 - [log4j-core-2.13.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.13.0.jar)
 - [log4j-core-2.13.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.13.1.jar)
 - [log4j-core-2.13.2.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.13.2.jar)
 - [log4j-core-2.13.3.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.13.3.jar)
 - [log4j-core-2.14.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.14.0.jar)
 - [log4j-core-2.14.1.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.14.1.jar)
 - [log4j-core-2.15.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.15.0.jar)
 - [log4j-core-2.16.0.jar](https://raw.githubusercontent.com/Aschen/log4j-patched/1.0.0/log4j-core-2.16.0.jar)
