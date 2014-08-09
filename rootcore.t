prologue
--------
  $ cd ${TESTDIR}
setup ALRB and ROOT
-------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1
 
analysis example
----------------
  $ wget -q https://ci-connect.atlassian.net/wiki/download/attachments/3702790/AnalysisExample.zip
  $ unzip -q AnalysisExample
  $ cd AnalysisExample

more setup
----------
  $ asetup 17.2.7,single,here,slc5
  $ cd RootCore
  $ ./configure
  configure: creating ./config.status
  config.status: creating Makefile-common
  configure: creating ./config.status
  config.status: creating Makefile-common
  config.status: creating Makefile-single
  configure: creating ./config.status
  config.status: creating Makefile-common
  config.status: creating Makefile-single
  config.status: creating scripts/setup.sh
  configure: creating ./config.status
  config.status: creating Makefile-common
  config.status: creating Makefile-single
  config.status: creating scripts/setup.sh
  config.status: creating scripts/setup.csh
  $ cd ..
  $ . RootCore/scripts/setup.sh

recompile (can take >10 minutes)
---------
  $ $ROOTCOREDIR/scripts/find_packages.sh > find_packages.txt 2>&1

  $ $ROOTCOREDIR/scripts/compile.sh > compile-out.txt 2>&1
  $ cat compile-out.txt | tail -1  
  Processing /home/jenkins/workspace/ATLAS_Connect_Tests/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/RootCore/scripts/load_packages.C...

run job
-------
  $ cd HWWlvlvCode/Run/
  $ ./run_MC12a_DATA.sh 125 Nominal > job-output.txt 2>&1
  $ cat job-output.txt | tail -7
  Number of events processed 36457 and written to the dilepton ntuple 520 and to the MVA one 84
  run_macro_fileinput.cxx:93: RuntimeWarning: Automatic variable retval is allocated
    retval = inputChain->Process(NtupleMaker,options);
  nevtpre = 36457
  nevt = 36457
  (int)0
  stop: * (glob)