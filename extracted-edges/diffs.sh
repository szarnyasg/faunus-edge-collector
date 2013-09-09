#!/bin/bash

edges="SWITCHPOSITION_SWITCH ROUTE_SWITCHPOSITION TRACKELEMENT_SENSOR ROUTE_ROUTEDEFINITION"

for e in $edges; do
    diff $e-results-naive-non-empty.txt $e-results-efficient.txt > $e-diff.txt
done
