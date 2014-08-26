check cvmfs directory
---------------------
  $ cd ${TESTDIR}
  $ ls /cvmfs/atlas.cern.ch
  repo

check that ALRB setup works
---------------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
  $ setupATLAS > setup.txt 2>&1

  $ cat setup.txt | grep XRootD
  ...Type localSetupXRootD to setup XRootD