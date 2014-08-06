prologue
--------
  $ cd ${TESTDIR}/atlas-root

setup ALRB and ROOT
-------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1
  $ localSetupROOT > setup-root.txt 2>&1

condor jobs
-----------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run the tutorial with condor:
  $ ./run_and_wait.sh hostname.cmd
  All jobs done.

  $ ./run_and_wait.sh rcc.cmd
  All jobs done.