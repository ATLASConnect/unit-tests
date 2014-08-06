prologue
--------
  $ cd ${TESTDIR}/atlas-root

setup ALRB and ROOT
-------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1
  $ localSetupROOT
  ************************************************************************
  Setting up ROOT version * (glob)
    Current GCC version: gcc (GCC) * (glob)
  Setting up gcc version gcc* (glob)
    Python version in your path is * (glob)
    Python version used to build ROOT is * (glob)
  Setting up Python version * (glob)
  Setting up XRootD version * (glob)
  ************************************************************************
   Tip for _this_ standalone ROOT and grid (ie prun) submission:
    avoid --athenaTag if you do not need athena
    use --rootVer=* --cmtConfig=* (glob)
  ************************************************************************

condor jobs
-----------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run the tutorial with condor:
  $ ./run_and_wait.sh hostname.cmd
  All jobs done.

  $ ./run_and_wait.sh rcc.cmd
  All jobs done.