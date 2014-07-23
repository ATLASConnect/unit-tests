prologue
--------
  $ cd ${TESTDIR}
setup ALRB and ROOT
-------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
  ...Type localSetupAGIS to setup AGIS
  ...Type localSetupAtlantis to setup Atlantis
  ...Type localSetupDQ2Client to use DQ2 Client
  ...Type localSetupEmi to use emi
  ...Type localSetupFAX to use FAX
  ...Type localSetupGanga to use Ganga
  ...Type localSetupGcc to use alternate gcc
  ...Type localSetupPacman to use Pacman
  ...Type localSetupPandaClient to use Panda Client
  ...Type localSetupPyAMI to setup pyAMI
  ...Type localSetupPoD to setup Proof-on-Demand
  ...Type localSetupROOT to setup (standalone) ROOT
  ...Type localSetupDQ2Wrappers to setup DQ2Wrappers
  ...Type localSetupSFT to setup SFT packages
  ...Type localSetupXRootD to setup XRootD
  ...Type showVersions to show versions of installed software
  ...Type asetup to setup a release (changeASetup to change asetup version)
  ...Type rcSetup to setup an ASG release (changeRCSetup to change rcSetup ver.)
  ...Type diagnostics for diagnostic tools
  ...Type helpMe for more help
  ...Type printMenu to show this menu
  
  \x1b[1m\x1b[4m07 Jul 2014\x1b[0m  (esc)
      There may be some voms-proxy errors (voms2.cern.ch and lcg-voms2.cern.ch).
       This can be ignored for now as there is a migration to new servers 
       which are not yet switched on.  However, at the end of the commands, 
       you must see a successful attempt and obtain a valid proxy.
  
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

  $ $ROOTCOREDIR/scripts/compile.sh
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetCalibration
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ApplyJetCalibration.cxx
  Compiling ../Root/ApplyJetCalibration.cxx
  Running rootcint
  Compiling ../obj/ApplyJetCalibration_Dict.cxx
  Linking ../StandAlone/libApplyJetCalibration.* (glob)
  Linking ../StandAlone/libApplyJetCalibration.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetResolution
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/JERProvider.cxx
  Compiling ../Root/JERProvider.cxx
  Running rootcint
  Compiling ../obj/JetResolution_Dict.cxx
  Linking ../StandAlone/libJetResolution.* (glob)
  Linking ../StandAlone/libJetResolution.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ApplyJetResolutionSmearing
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ApplyJetSmearing.cxx
  Compiling ../Root/ApplyJetSmearing.cxx
  Running rootcint
  Compiling ../obj/ApplyJetResolutionSmearing_Dict.cxx
  Linking ../StandAlone/libApplyJetResolutionSmearing.* (glob)
  Linking ../StandAlone/libApplyJetResolutionSmearing.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/CalibrationDataInterface
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/CalibrationData* (glob)
  Making dependency for ../Root/CalibrationData* (glob)
  Making dependency for ../Root/CalibrationData* (glob)
  Compiling ../Root/CalibrationData* (glob)
  Compiling ../Root/CalibrationData* (glob)
  Compiling ../Root/CalibrationData* (glob)
  Running rootcint
  Compiling ../obj/CalibrationDataInterface_Dict.cxx
  Linking ../StandAlone/libCalibrationDataInterface.* (glob)
  Linking ../StandAlone/libCalibrationDataInterface.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/GoodRunsLists
  configuring GoodRunsList package
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TUniqueGRLString.cxx
  Making dependency for ../Root/TMsgLogger.cxx
  Making dependency for ../Root/TLumiBlockRange.cxx
  Making dependency for ../Root/TGoodRunsListWriter.cxx
  Making dependency for ../Root/TGoodRunsListReader.cxx
  Making dependency for ../Root/TGoodRunsList.cxx
  Making dependency for ../Root/TGoodRun.cxx
  Making dependency for ../Root/TGRLCollection.cxx
  Making dependency for ../Root/StrUtil.cxx
  Making dependency for ../Root/RegularFormula.cxx
  Making dependency for ../Root/DQHelperFunctions.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/GoodRunsLists_Dict.cxx
  Linking ../StandAlone/libGoodRunsLists.* (glob)
  Linking ../StandAlone/libGoodRunsLists.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ObjectSelectorCore
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TAccept.cxx
  Compiling ../Root/TAccept.cxx
  Running rootcint
  Compiling ../obj/ObjectSelectorCore_Dict.cxx
  Linking ../StandAlone/libObjectSelectorCore.* (glob)
  Linking ../StandAlone/libObjectSelectorCore.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetSelectorTools
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TJetCleaningTool.cxx
  Compiling ../Root/TJetCleaningTool.cxx
  Running rootcint
  Compiling ../obj/JetSelectorTools_Dict.cxx
  Linking ../StandAlone/libJetSelectorTools.* (glob)
  Linking ../StandAlone/libJetSelectorTools.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonSelectorTools
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TStandAloneMuonSelector.cxx
  Making dependency for ../Root/TMuonSelector.cxx
  Compiling ../Root/T*Selector.cxx (glob)
  Compiling ../Root/T*Selector.cxx (glob)
  Running rootcint
  Compiling ../obj/MuonSelectorTools_Dict.cxx
  Linking ../StandAlone/libMuonSelectorTools.* (glob)
  Linking ../StandAlone/libMuonSelectorTools.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaAnalysisUtils
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../util/test_iso_corrections.cxx
  Making dependency for ../util/test_checkOQ.cxx
  Making dependency for ../Root/egammaTriggerMatching.cxx
  Making dependency for ../Root/egammaSFclass.cxx
  Making dependency for ../Root/checkOQ.cxx
  Making dependency for ../Root/VertexPositionReweightingTool.cxx
  Making dependency for ../Root/ProbeQualityCuts.cxx
  Making dependency for ../Root/PhotonIDTool.cxx
  Making dependency for ../Root/PhotonEfficiencySFTool.cxx
  Making dependency for ../Root/MultiLeptonDefs.cxx
  Making dependency for ../Root/IsEMPlusPlusDefs.cxx
  Making dependency for ../Root/IsEMForwardDefs.cxx
  Making dependency for ../Root/FudgeMCTool.cxx
  Making dependency for ../Root/FsrPhotons.cxx
  Making dependency for ../Root/EnergyRescalerUpgrade.cxx
  Making dependency for ../Root/EnergyRescaler.cxx
  Making dependency for ../Root/ElectronMCChargeCorrector.cxx
  Making dependency for ../Root/ElectronLikelihoodTool.cxx
  Making dependency for ../Root/ElectronEfficiencySFTool.cxx
  Making dependency for ../Root/EisoTool2012.cxx
  Making dependency for ../Root/EisoTool.cxx
  Making dependency for ../Root/ConvertedPhotonScaleTool.cxx
  Making dependency for ../Root/CaloIsoCorrection.cxx
  Making dependency for ../Root/BosonPtReweightingTool.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  * (glob)
  * (glob)
  * (glob)
  Compiling ../obj/egammaAnalysisUtils_Dict.cxx
  Linking ../StandAlone/libegammaAnalysisUtils.so
  Linking ../StandAlone/libegammaAnalysisUtils.a
  Linking ../bin/test_checkOQ
  Linking ../bin/test_iso_corrections
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonEfficiencyCorrections
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/EtaPhiBinning.cxx
  Making dependency for ../Root/AnalysisMuonEfficiencyScaleFactors.cxx
  Making dependency for ../Root/AnalysisMuonConfigurableScaleFactors.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/MuonEfficiencyCorrections_Dict.cxx
  Linking ../StandAlone/libMuonEfficiencyCorrections.* (glob)
  Linking ../StandAlone/libMuonEfficiencyCorrections.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonMomentumCorrections
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/SmearingClass.cxx
  Compiling ../Root/SmearingClass.cxx
  Running rootcint
  Compiling ../obj/MuonMomentumCorrections_Dict.cxx
  Linking ../StandAlone/libMuonMomentumCorrections.* (glob)
  Linking ../StandAlone/libMuonMomentumCorrections.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/PileupReweighting
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TPileupReweighting.cxx
  Compiling ../Root/TPileupReweighting.cxx
  Running rootcint
  Compiling ../obj/PileupReweighting_Dict.cxx
  Linking ../StandAlone/libPileupReweighting.* (glob)
  Linking ../StandAlone/libPileupReweighting.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/JetUncertainties
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/UJUncertaintyProvider.cxx
  Making dependency for ../Root/MultijetJESUncertaintyProvider.cxx
  Making dependency for ../Root/JESUtils.cxx
  Making dependency for ../Root/JESUncertaintyProvider.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/JetUncertainties_Dict.cxx
  Linking ../StandAlone/libJetUncertainties.* (glob)
  Linking ../StandAlone/libJetUncertainties.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MissingETUtility
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TESUncertaintyProvider.cxx
  Making dependency for ../Root/METUtility.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/MissingETUtility_Dict.cxx
  Linking ../StandAlone/libMissingETUtility.* (glob)
  Linking ../StandAlone/libMissingETUtility.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/MuonIsolationCorrection
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/IsoConfig.cxx
  Making dependency for ../Root/CorrectCaloIso.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/MuonIsolationCorrection_Dict.cxx
  Linking ../StandAlone/libMuonIsolationCorrection.* (glob)
  Linking ../StandAlone/libMuonIsolationCorrection.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/TrigMuonEfficiency
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MuonTriggerMatching.cxx
  Making dependency for ../Root/MuonHypothesis.cxx
  Making dependency for ../Root/LeptonTriggerSF.cxx
  Making dependency for ../Root/LeptonTriggerMatching.cxx
  Making dependency for ../Root/HSG3TrigLeptonSFTool.cxx
  Making dependency for ../Root/ElectronTriggerMatching.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  ../Root/MuonTriggerMatching.cxx: In member function 'double MuonTriggerMatching::matchedTrackDetail(MuonTriggerMatching::EFmuon&, const MuonTriggerMatching::EFmuon&, double, double, const std::string&, const std::string&, const std::string&)':
  ../Root/MuonTriggerMatching.cxx:398: warning: unused variable 'vIsoContainer'
  ../Root/MuonTriggerMatching.cxx:412: warning: comparison between signed and unsigned integer expressions
  Compiling ../obj/TrigMuonEfficiency_Dict.cxx
  Linking ../StandAlone/libTrigMuonEfficiency.* (glob)
  Linking ../StandAlone/libTrigMuonEfficiency.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/egammaEvent
  Making dependency for ../Root/LinkDef.h
  Running rootcint
  Compiling ../obj/egammaEvent_Dict.cxx
  Linking ../StandAlone/libegammaEvent.* (glob)
  Linking ../StandAlone/libegammaEvent.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/IsolationScaleFactors
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MuonIsolationSF.cxx
  Making dependency for ../Root/ElecIsolationSF.cxx
  Compiling ../Root/ElecIsolationSF.cxx
  Compiling ../Root/MuonIsolationSF.cxx
  Running rootcint
  Compiling ../obj/IsolationScaleFactors_Dict.cxx
  Linking ../StandAlone/libIsolationScaleFactors.* (glob)
  Linking ../StandAlone/libIsolationScaleFactors.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/ggFReweighting
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ggFReweighting.cxx
  Compiling ../Root/ggFReweighting.cxx
  Running rootcint
  Compiling ../obj/ggFReweighting_Dict.cxx
  Linking ../StandAlone/libggFReweighting.* (glob)
  Linking ../StandAlone/libggFReweighting.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWNtupleCode
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/mHreweighting.cxx
  Making dependency for ../Root/bunchPosition.cxx
  Making dependency for ../Root/VertexD3PDObject.cxx
  Making dependency for ../Root/VarHandle.cxx
  Making dependency for ../Root/TruthD3PDObject.cxx
  Making dependency for ../Root/TrigD3PDObject.cxx
  Making dependency for ../Root/TrackMetTool.cxx
  Making dependency for ../Root/TrackD3PDObject.cxx
  Making dependency for ../Root/TopHfor.cxx
  Making dependency for ../Root/TauPolReweighting.cxx
  Making dependency for ../Root/TauD3PDObject.cxx
  Making dependency for ../Root/PtllReweighting.cxx
  Making dependency for ../Root/MyTriggerTools.cxx
  Making dependency for ../Root/MyMuonTools.cxx
  Making dependency for ../Root/MyMetTools.cxx
  Making dependency for ../Root/MyJetTools.cxx
  Making dependency for ../Root/MyElectronTools.cxx
  Making dependency for ../Root/MuonD3PDObject.cxx
  Making dependency for ../Root/METD3PDObject.cxx
  Making dependency for ../Root/L1EventTrigD3PDObject.cxx
  Making dependency for ../Root/KFRescaler.cxx
  Making dependency for ../Root/Jetkt6LCD3PDObject.cxx
  Making dependency for ../Root/JetTruthD3PDObject.cxx
  Making dependency for ../Root/JetD3PDObject.cxx
  Making dependency for ../Root/Jet6LCD3PDObject.cxx
  Making dependency for ../Root/Jet4LCD3PDObject.cxx
  Making dependency for ../Root/GetVtxWeight.cxx
  Making dependency for ../Root/GenEventD3PDObject.cxx
  Making dependency for ../Root/EventInfoD3PDObject.cxx
  Making dependency for ../Root/ElectronD3PDObject.cxx
  Making dependency for ../Root/EFEventTrigD3PDObject.cxx
  Making dependency for ../Root/Config.cxx
  Making dependency for ../Root/CalculateHelper.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Running rootcint
  Compiling ../obj/HWWNtupleCode_Dict.cxx
  Linking ../StandAlone/libHWWNtupleCode.* (glob)
  Linking ../StandAlone/libHWWNtupleCode.* (glob)
  compiling /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/HWWlvlvCode
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MyMuonTools_lvlv.cxx
  Making dependency for ../Root/MyJetTools_lvlv.cxx
  Making dependency for ../Root/MyElectronTools_lvlv.cxx
  Making dependency for ../Root/HWWlvlvCode.cxx
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  Compiling ../Root/*.cxx (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  Compiling ../obj/HWWlvlvCode_Dict.cxx
  Linking ../StandAlone/libHWWlvlvCode.so
  Linking ../StandAlone/libHWWlvlvCode.a
  
  Processing /home/jenkins/workspace/ATLAS_Connect_RootCore/unit-tests/AnalysisExample/RootCore/scripts/load_packages.C...

run job
-------
  $ cd HWWlvlvCode/Run/
  $ ./run_MC12a_DATA.sh 125 Nominal
  Mass = 125
  Type = Nominal
  start: * (glob)
  
  Processing run_macro_fileinput.cxx("","HWWSkimmedNTUP","Nominal",125)...
   kfactors read successfully! 
  XrdSec: No authentication protocols are available.
  Error in <TXNetSystem::Connect>: some severe error occurred while opening the connection at root://dcdoor11.usatlas.bnl.gov//atlas/rucio/user/flegger:NTUP_SMWZ.00986521._000010.BNL-ATLAS.root.1 - exit
     'cannot obtain credentials for protocol: Secgsi: ErrParseBuffer: error getting user proxies: kXGS_init: unable to get protocol object.'
  Error in <TXNetSystem::TXNetSystem>: fatal error: connection creation failed.
  XrdSec: No authentication protocols are available.
  Error in <TXNetFile::CreateXClient>: open attempt failed on root://dcdoor11.usatlas.bnl.gov//atlas/rucio/user/flegger:NTUP_SMWZ.00986521._000010.BNL-ATLAS.root.1
  Total number of entries in chain (after all the files) 0
  Total number of files 1
  ERROR: Total number of entries in chain == 0 !
  ERROR: Possible setup problem with input file access !
  ERROR: Quitting now !
  (int)1
  stop: * (glob)