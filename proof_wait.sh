#!/bin/bash                                                                     

if [ "$#" -ne 0 ]
  then echo "Usage: ./proof_submit"
  exit
fi
 
CLUSTER_ID=$(pod-submit -r condor -n 25 | cut -d' ' -f3)

LOG_FILE=$(condor_q -format '%s\n' UserLog $CLUSTER_ID | tail -n1)

condor_wait $LOG_FILE $CLUSTER_ID