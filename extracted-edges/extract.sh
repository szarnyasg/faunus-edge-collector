#!/bin/bash

files="results-efficient.txt results-naive-no-duplicates.txt"
edges="SWITCHPOSITION_SWITCH ROUTE_SWITCHPOSITION TRACKELEMENT_SENSOR ROUTE_ROUTEDEFINITION"

for f in $files; do
	echo $f
	for e in $edges; do
		echo $e
		grep -o "$e, \[[^,]*]" $f > "$e-$f"
	done
done
