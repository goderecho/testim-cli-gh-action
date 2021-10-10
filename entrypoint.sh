#!/bin/bash
if [ -z "$6" ]; then
  parallel=1
else
  parallel=$6
fi

if [ -z "$5" ]; then
  testim --token $1 --project $2 --grid $3 -r testim-report.xml --suite $4 --parallel $parallel 
else 
   testim --token $1 --project $2 --grid $3 -r testim-report.xml --suite $4 --testId $5 --parallel $parallel
fi
