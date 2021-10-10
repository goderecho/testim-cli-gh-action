#!/bin/bash
if [ -z "$5" ]; then
  testim --token $1 --project $2 --grid $3 -r testim-report.xml --suite $4 --parallel 20 
else 
   testim --token $1 --project $2 --grid $3 -r testim-report.xml --suite $4 --testId $5 --parallel 20 
fi
