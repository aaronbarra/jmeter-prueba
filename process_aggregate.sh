#!/bin/bash
cat /opt/jmeter/bin/reports/aggregate_results.csv |sed -e 's/^,/TOTAL,/g' | tr "," "|" | sed -e 's/^/|/' | sed -e 's/\r$/|\\\\n\\/' | sed -e '1 s/|/||/g'
