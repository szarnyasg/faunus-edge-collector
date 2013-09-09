#!/bin/bash

rm -rf output

export FAUNUS_HOME=~/faunus-0.3.2
$FAUNUS_HOME/bin/gremlin.sh < faunus-edges-naive.txt

cat output/job-0/sideeffect-m-* | sort > results-naive.txt
# removing vertices with no appropriate edges
cat results-naive.txt | grep -v "\[SWITCHPOSITION_SWITCH, \[\], ROUTE_SWITCHPOSITION, \[\], TRACKELEMENT_SENSOR, \[\], ROUTE_ROUTEDEFINITION, \[\]\]" > results-naive-no-duplicates.txt