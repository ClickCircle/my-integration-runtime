#!/bin/bash
BASE='/dependencies'
for file in $(ls ${BASE}); do CP=$CP:"$BASE/$file"; done && CP=$(echo "${CP:1}" | sed 's/\/\//\//g')
java -cp "$CP:/classes:$USER_CP" \
 com.jm.integration.runtime.CamelIntegrationRuntimeApplication \
 "$JAVA_OPTS" "$CUSTOM_OPTS"