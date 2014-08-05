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
  $ localSetupPoD
  ************************************************************************
  Setting up ROOT version * (glob)
    Current GCC version: gcc (GCC) * (Red Hat *) (glob)
  Setting up gcc version gcc* (glob)
    Python version in your path is * (glob)
    Python version used to build ROOT is * (glob)
  Setting up Python version * (glob)
  Setting up XRootD version * (glob)
  ************************************************************************
   Tip for _this_ standalone ROOT and grid (ie prun) submission:
    avoid --athenaTag if you do not need athena
    use --rootVer=* --cmtConfig=x86_64-* (glob)
  ************************************************************************
  ************************************************************************
  Setting up PoD version PoD-* (glob)
    Current GCC version: gcc (GCC) * (glob)
    Python version in your path is * (glob)
    Python version needed for PoD is * (glob)
  Setting up Python version * (glob)
  Setting up Boost version * (glob)
   BOOST_ROOT is $ALRB_BOOST_ROOT
    If you need a different boost/gcc/python version:
      localSetupGcc --gccVersion=<value>
      localSetupPython --pythonVersion=<version>
      localSetupBoost --boostVersion=<version>
    where the version must exist (showVersions --show=boost,gcc,python)
  ************************************************************************
  Warning: PoD is supported for bash shells. 
            You are using /bin/sh (it may work !)
  ...Type generatePoDSetups to generate the pod-remote scripts
  $ generatePoDSetups
  
  On the remote machine where you plan to run PoD, 
    scp * (glob)
  For details, see 
    https://twiki.atlas-canada.ca/bin/view/AtlasCanada/ATLASLocalRootBase#PoD
  
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