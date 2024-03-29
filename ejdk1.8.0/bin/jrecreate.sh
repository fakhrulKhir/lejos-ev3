#!/bin/sh

if [ -z "$JAVA_HOME" ]; then
    echo "JAVA_HOME is not set"
    exit 1
fi 

if [ -z "$EJDK_HOME" ]; then
    EJDK_HOME=$(cd `dirname $0`/.. && pwd)
fi 

$JAVA_HOME/bin/java -Xms512m -Xmx512m -Xbootclasspath/p:${EJDK_HOME}/lib/JRECreate.jar -Dejdk.home=${EJDK_HOME} -jar ${EJDK_HOME}/lib/JRECreate.jar $@
RC=$?

exit $RC
