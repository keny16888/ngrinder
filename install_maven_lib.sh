#!/bin/bash

if [[ ! -f ~/.m2/repository/sigar/sigar-native/1.0/sigar-native-1.0.jar ]] ; then
	./mvnw install:install-file -Dfile=lib/sigar-native-1.0.jar -DgroupId=sigar -DartifactId=sigar-native -Dversion=1.0	-Dpackaging=jar -DcreateChecksum=true
fi

if [[ ! -f ~/.m2/repository/grinder/grinder-patch/3.9.1/grinder-patch-3.9.1.jar ]] ; then
	./mvnw install:install-file -Dfile=lib/grinder-3.9.1-patch.jar -DgroupId=grinder -DartifactId=grinder-patch -Dversion=3.9.1-patch -Dpackaging=jar -DcreateChecksum=true
fi

if [[ ! -f ~/.m2/repository/org/ngrinder/universal-analytics-java/1.0/universal-analytics-java-1.0.jar ]] ; then
	./mvnw install:install-file -Dfile=lib/universal-analytics-java-1.0.jar -DgroupId=org.ngrinder -DartifactId=universal-analytics-java -Dversion=1.0 -Dpackaging=jar -DcreateChecksum=true
fi

if [[ ! -f ~/.m2/repository/sonia/svnkit/svnkit/1.8.3-scm1/svnkit-1.8.3-scm1.jar ]] ; then
        ./mvnw install:install-file -Dfile=lib/svnkit-1.8.3-scm1.jar -DgroupId=sonia.svnkit -DartifactId=svnkit -Dversion=1.8.3-scm1 -Dpackaging=jar -DcreateChecksum=true
fi

if [[ ! -f ~/.m2/repository/sonia/svnkit/svnkit-dav/1.8.3-scm1/svnkit-dav-1.8.3-scm1.jar ]] ; then
        ./mvnw install:install-file -Dfile=lib/svnkit-dav-1.8.3-scm1.jar -DgroupId=sonia.svnkit -DartifactId=svnkit-dav -Dversion=1.8.3-scm1 -Dpackaging=jar -DcreateChecksum=true
fi

if [[ ! -f ~/.m2/repository/org/tmatesoft/svn/svnkit/1.3.5/svnkit-1.3.5.jar ]] ; then
        ./mvnw install:install-file -Dfile=lib/svnkit-1.3.5.jar -DgroupId=org.tmatesoft.svn -DartifactId=svnkit -Dversion=1.3.5 -Dpackaging=jar -DcreateChecksum=true
fi
