prologue
--------
  $ cd ${TESTDIR}

setup
-----
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1
  $ localSetupXRootD
  Setting up XRootD version * (glob)

faxbox
------
  $ touch fax-xrootd.txt
  $ xrdcp -fv fax-xrootd.txt root://faxbox.usatlas.org://user/jenkins/fax-xrootd.txt
  
  [0B/0B][100%][==================================================][0B/s]  

  $ xrdcp root://faxbox.usatlas.org://user/jenkins/fax-xrootd.txt retrieved.txt
  
  [0B/0B][100%][==================================================][0B/s]  

check
  $ ls retrieved.txt
  retrieved.txt

clean-up
--------
  $ cd ~/faxbox
  $ rm fax-xrootd.txt
  $ ls fax-xrootd.txt
  ls: cannot access fax-xrootd.txt: No such file or directory
  [2]
