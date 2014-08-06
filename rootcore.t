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
  $ $ROOTCOREDIR/scripts/find_packages.sh
  looking for packages in /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample
  packages found:
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetCalibration
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetResolutionSmearing
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/CalibrationDataInterface
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/GoodRunsLists
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWNtupleCode
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWlvlvCode
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/IsolationScaleFactors
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetResolution
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetSelectorTools
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetUncertainties
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MissingETUtility
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonEfficiencyCorrections
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonIsolationCorrection
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonMomentumCorrections
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonSelectorTools
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ObjectSelectorCore
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/PileupReweighting
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/TrigMuonEfficiency
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaAnalysisUtils
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaEvent
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ggFReweighting
  
  sorted packages:
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetCalibration
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetResolution
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetResolutionSmearing
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/CalibrationDataInterface
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/GoodRunsLists
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ObjectSelectorCore
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetSelectorTools
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonSelectorTools
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaAnalysisUtils
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonEfficiencyCorrections
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonMomentumCorrections
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/PileupReweighting
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetUncertainties
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MissingETUtility
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonIsolationCorrection
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/TrigMuonEfficiency
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaEvent
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/IsolationScaleFactors
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ggFReweighting
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWNtupleCode
  /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWlvlvCode
  $ $ROOTCOREDIR/scripts/clean.sh
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetCalibration
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetResolution
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetResolutionSmearing
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/CalibrationDataInterface
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/GoodRunsLists
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ObjectSelectorCore
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetSelectorTools
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonSelectorTools
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaAnalysisUtils
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonEfficiencyCorrections
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonMomentumCorrections
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/PileupReweighting
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetUncertainties
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MissingETUtility
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonIsolationCorrection
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/TrigMuonEfficiency
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaEvent
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/IsolationScaleFactors
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ggFReweighting
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWNtupleCode
  cleaning /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWlvlvCode

  $ $ROOTCOREDIR/scripts/compile.sh > compile-out.txt 2>&1
  $ cat compile-out.txt | tail -1  
  Processing /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/RootCore/scripts/load_packages.C...

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