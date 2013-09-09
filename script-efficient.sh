#!/bin/bash

rm result

export FAUNUS_HOME=~/faunus-0.3.2
$FAUNUS_HOME/bin/gremlin.sh < faunus-edges-efficient.txt

cat results-efficient-unsorted.txt | sort > results-efficient.txt
