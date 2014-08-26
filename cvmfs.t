check cvmfs directory
---------------------
  $ cd ${TESTDIR}
  $ ls /cvmfs/atlas.cern.ch
  repo

check that ALRB setup works
---------------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1