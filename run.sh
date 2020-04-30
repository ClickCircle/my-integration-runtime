#!/bin/bash
 
BASE='/lib'
for file in $(ls ${BASE}); do CP=$CP:"$BASE/$file"; done && CP=$(echo "${CP:1}" | sed 's/\/\//\//g')
java -cp "$CP:/classes:$USER_CP" com.jm.integration.runtime.CamelIntegrationRuntimeApplication "$JVM_OPTS"
