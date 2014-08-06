prologue
--------
  $ cd ${TESTDIR}
 
setup ATLAS Local Root Base
---------------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
  $ setupATLAS > setup.txt 2>&1

Setup PoD
---------
  $ localSetupPoD > setup-pod.txt 2>&1

  $ pod-server start
  Starting PoD server...
  updating xproofd configuration file...
  starting xproofd...
  starting PoD agent...
  preparing PoD worker package...
  select user defined environment script to be added to worker package...
  selecting pre-compiled bins to be added to worker package...
  PoD worker package: * (glob)
  ------------------------
  XPROOFD [*] port: * (glob)
  PoD agent [*] port: * (glob)
  PROOF connection string: * (glob)
  ------------------------

submit PROOF workers via HTCondor
---------------------------------
  $ ./proof_wait.sh
  All jobs done.

  $ pod-server stop | grep Gracefully
  Gracefully shut down PoD server process(es): * (glob)