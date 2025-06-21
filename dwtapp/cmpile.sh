#!/bin/bash
#
##Test and Prod Builts #################
#
#javac -deprecation -classpath $CATALINA_HOME/common/lib/servlet-api.jar WEB-INF/src/WebCrawler.java
#mv -f  WEB-INF/src/WebCrawler.class  WEB-INF/classes/
dt=`date +'%Y%m%d_%H%M%S'`
echo ''
echo 'Preparing jar file for deployment...'
echo 'Stay tuned!'
echo ''
if [ "$1" = "prod" ]
then
  jar cf ../dwtapps$dt.war *
  cp ../dwtapps$dt.war  /apps/webapps/dwtapps.war
  echo "Production build complete..."
  ls -ltr  /apps/webapps/
  echo "Test build complete..."
fi
