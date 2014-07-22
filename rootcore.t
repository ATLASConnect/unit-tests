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
  
  07 Jul 2014 
      There may be some voms-proxy errors (voms2.cern.ch and lcg-voms2.cern.ch).
       This can be ignored for now as there is a migration to new servers 
       which are not yet switched on.  However, at the end of the commands, 
       you must see a successful attempt and obtain a valid proxy.
  
analysis example
----------------
  $ wget https://ci-connect.atlassian.net/wiki/download/attachments/3702790/AnalysisExample.zip
  --????-??-?? ??:??:??--  https://ci-connect.atlassian.net/wiki/download/attachments/3702790/AnalysisExample.zip (glob)
  Resolving ci-connect.atlassian.net... 131.103.29.210
  Connecting to ci-connect.atlassian.net|131.103.29.210|:443... connected.
  HTTP request sent, awaiting response... 200 OK
  Length: 93792975 (89M) [application/zip]
  Saving to: “AnalysisExample.zip”
  
  100%[======================================>] * (glob)  
  ????-??-?? ??:??:?? (* MB/s) - “AnalysisExample.zip” saved * (glob)
  
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
  looking for packages in */AnalysisExample (glob)
  packages found:
  */AnalysisExample/ApplyJetCalibration (glob)
  */AnalysisExample/ApplyJetResolutionSmearing (glob)
  */AnalysisExample/CalibrationDataInterface (glob)
  */AnalysisExample/egammaAnalysisUtils (glob)
  */AnalysisExample/egammaEvent (glob)
  */AnalysisExample/ggFReweighting (glob)
  */AnalysisExample/GoodRunsLists (glob)
  */AnalysisExample/HWWlvlvCode (glob)
  */AnalysisExample/HWWNtupleCode (glob)
  */AnalysisExample/IsolationScaleFactors (glob)
  */AnalysisExample/JetResolution(glob)
  */AnalysisExample/JetSelectorTools (glob)
  */AnalysisExample/JetUncertainties (glob)
  */AnalysisExample/MissingETUtility (glob)
  */AnalysisExample/MuonEfficiencyCorrections (glob)
  */AnalysisExample/MuonIsolationCorrection (glob)
  */AnalysisExample/MuonMomentumCorrections (glob)
  */AnalysisExample/MuonSelectorTools (glob)
  */AnalysisExample/ObjectSelectorCore (glob)
  */AnalysisExample/PileupReweighting (glob)
  */AnalysisExample/TrigMuonEfficiency (glob)
  
  sorted packages:
  */AnalysisExample/ApplyJetCalibration (glob)
  */AnalysisExample/JetResolution (glob)
  */AnalysisExample/ApplyJetResolutionSmearing (glob)
  */AnalysisExample/CalibrationDataInterface (glob)
  */AnalysisExample/egammaAnalysisUtils (glob)
  */AnalysisExample/egammaEvent (glob)
  */AnalysisExample/ggFReweighting (glob)
  */AnalysisExample/GoodRunsLists (glob)
  */AnalysisExample/ObjectSelectorCore (glob)
  */AnalysisExample/JetSelectorTools (glob)
  */AnalysisExample/MuonSelectorTools (glob)
  */AnalysisExample/MuonEfficiencyCorrections (glob)
  */AnalysisExample/MuonMomentumCorrections (glob)
  */AnalysisExample/PileupReweighting (glob)
  */AnalysisExample/JetUncertainties (glob)
  */AnalysisExample/MissingETUtility (glob)
  */AnalysisExample/MuonIsolationCorrection (glob)
  */AnalysisExample/TrigMuonEfficiency (glob)
  */AnalysisExample/IsolationScaleFactors (glob)
  */AnalysisExample/HWWNtupleCode (glob)
  */AnalysisExample/HWWlvlvCode (glob)
  $ $ROOTCOREDIR/scripts/clean.sh
  cleaning */AnalysisExample/ApplyJetCalibration (glob)
  cleaning */AnalysisExample/JetResolution (glob)
  cleaning */AnalysisExample/ApplyJetResolutionSmearing (glob)
  cleaning */AnalysisExample/CalibrationDataInterface (glob)
  cleaning */AnalysisExample/egammaAnalysisUtils (glob)
  cleaning */AnalysisExample/egammaEvent (glob)
  cleaning */AnalysisExample/ggFReweighting (glob)
  cleaning */AnalysisExample/GoodRunsLists (glob)
  cleaning */AnalysisExample/ObjectSelectorCore (glob)
  cleaning */AnalysisExample/JetSelectorTools (glob)
  cleaning */AnalysisExample/MuonSelectorTools (glob)
  cleaning */AnalysisExample/MuonEfficiencyCorrections (glob)
  cleaning */AnalysisExample/MuonMomentumCorrections (glob)
  cleaning */AnalysisExample/PileupReweighting (glob)
  cleaning */AnalysisExample/JetUncertainties (glob)
  cleaning */AnalysisExample/MissingETUtility (glob)
  cleaning */AnalysisExample/MuonIsolationCorrection (glob)
  cleaning */AnalysisExample/TrigMuonEfficiency (glob)
  cleaning */AnalysisExample/IsolationScaleFactors (glob)
  cleaning */AnalysisExample/HWWNtupleCode (glob)
  cleaning */AnalysisExample/HWWlvlvCode (glob)

  $ $ROOTCOREDIR/scripts/compile.sh
  compiling */atlas-analysis/ApplyJetCalibration (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ApplyJetCalibration.cxx
  Compiling ../Root/ApplyJetCalibration.cxx
  Running rootcint
  Compiling ../obj/ApplyJetCalibration_Dict.cxx
  Linking ../StandAlone/libApplyJetCalibration.so
  Linking ../StandAlone/libApplyJetCalibration.a
  compiling /home/antonyu/atlas-analysis/JetResolution
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/JERProvider.cxx
  Compiling ../Root/JERProvider.cxx
  Running rootcint
  Compiling ../obj/JetResolution_Dict.cxx
  Linking ../StandAlone/libJetResolution.a
  Linking ../StandAlone/libJetResolution.so
  compiling */atlas-analysis/ApplyJetResolutionSmearing (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ApplyJetSmearing.cxx
  Compiling ../Root/ApplyJetSmearing.cxx
  Running rootcint
  Compiling ../obj/ApplyJetResolutionSmearing_Dict.cxx
  Linking ../StandAlone/libApplyJetResolutionSmearing.so
  Linking ../StandAlone/libApplyJetResolutionSmearing.a
  compiling */atlas-analysis/CalibrationDataInterface (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/CalibrationDataInterfaceROOT.cxx
  Making dependency for ../Root/CalibrationDataInterfaceBase.cxx
  Making dependency for ../Root/CalibrationDataContainer.cxx
  Compiling ../Root/CalibrationDataContainer.cxx
  Compiling ../Root/CalibrationDataInterfaceBase.cxx
  Compiling ../Root/CalibrationDataInterfaceROOT.cxx
  Running rootcint
  Compiling ../obj/CalibrationDataInterface_Dict.cxx
  Linking ../StandAlone/libCalibrationDataInterface.so
  Linking ../StandAlone/libCalibrationDataInterface.a
  compiling */atlas-analysis/GoodRunsLists (glob)
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
  Compiling ../Root/RegularFormula.cxx
  Compiling ../Root/TGRLCollection.cxx
  Compiling ../Root/TGoodRun.cxx
  Compiling ../Root/DQHelperFunctions.cxx
  Compiling ../Root/TGoodRunsList.cxx
  Compiling ../Root/StrUtil.cxx
  Compiling ../Root/TLumiBlockRange.cxx
  Compiling ../Root/TGoodRunsListWriter.cxx
  Compiling ../Root/TGoodRunsListReader.cxx
  Compiling ../Root/TUniqueGRLString.cxx
  Compiling ../Root/TMsgLogger.cxx
  Running rootcint
  Compiling ../obj/GoodRunsLists_Dict.cxx
  Linking ../StandAlone/libGoodRunsLists.so
  Linking ../StandAlone/libGoodRunsLists.a
  compiling */atlas-analysis/ObjectSelectorCore (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TAccept.cxx
  Compiling ../Root/TAccept.cxx
  Running rootcint
  Compiling ../obj/ObjectSelectorCore_Dict.cxx
  Linking ../StandAlone/libObjectSelectorCore.a
  Linking ../StandAlone/libObjectSelectorCore.so
  compiling */atlas-analysis/JetSelectorTools (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TJetCleaningTool.cxx
  Compiling ../Root/TJetCleaningTool.cxx
  Running rootcint
  Compiling ../obj/JetSelectorTools_Dict.cxx
  Linking ../StandAlone/libJetSelectorTools.so
  Linking ../StandAlone/libJetSelectorTools.a
  compiling */atlas-analysis/MuonSelectorTools (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TStandAloneMuonSelector.cxx
  Making dependency for ../Root/TMuonSelector.cxx
  Compiling ../Root/TMuonSelector.cxx
  Compiling ../Root/TStandAloneMuonSelector.cxx
  Running rootcint
  Compiling ../obj/MuonSelectorTools_Dict.cxx
  Linking ../StandAlone/libMuonSelectorTools.a
  Linking ../StandAlone/libMuonSelectorTools.so
  compiling */atlas-analysis/egammaAnalysisUtils (glob)
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
  Compiling ../Root/ConvertedPhotonScaleTool.cxx
  Compiling ../Root/BosonPtReweightingTool.cxx
  Compiling ../Root/EisoTool.cxx
  Compiling ../Root/EisoTool2012.cxx
  Compiling ../Root/ElectronLikelihoodTool.cxx
  Compiling ../Root/CaloIsoCorrection.cxx
  Compiling ../Root/ElectronEfficiencySFTool.cxx
  Compiling ../Root/ElectronMCChargeCorrector.cxx
  Compiling ../Root/EnergyRescaler.cxx
  Compiling ../Root/EnergyRescalerUpgrade.cxx
  Compiling ../Root/FsrPhotons.cxx
  Compiling ../Root/FudgeMCTool.cxx
  Compiling ../Root/IsEMForwardDefs.cxx
  Compiling ../Root/IsEMPlusPlusDefs.cxx
  Compiling ../Root/MultiLeptonDefs.cxx
  Compiling ../Root/PhotonEfficiencySFTool.cxx
  Compiling ../Root/PhotonIDTool.cxx
  Compiling ../Root/ProbeQualityCuts.cxx
  Compiling ../Root/VertexPositionReweightingTool.cxx
  Compiling ../Root/checkOQ.cxx
  Compiling ../Root/egammaSFclass.cxx
  Compiling ../Root/egammaTriggerMatching.cxx
  Running rootcint
  Compiling ../util/test_checkOQ.cxx
  Compiling ../util/test_iso_corrections.cxx
  Compiling ../obj/egammaAnalysisUtils_Dict.cxx
  Linking ../StandAlone/libegammaAnalysisUtils.so
  Linking ../StandAlone/libegammaAnalysisUtils.a
  Linking ../bin/test_checkOQ
  Linking ../bin/test_iso_corrections
  compiling *atlas-analysis/MuonEfficiencyCorrections (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/EtaPhiBinning.cxx
  Making dependency for ../Root/AnalysisMuonEfficiencyScaleFactors.cxx
  Making dependency for ../Root/AnalysisMuonConfigurableScaleFactors.cxx
  Compiling ../Root/AnalysisMuonEfficiencyScaleFactors.cxx
  Compiling ../Root/AnalysisMuonConfigurableScaleFactors.cxx
  Compiling ../Root/EtaPhiBinning.cxx
  Running rootcint
  Compiling ../obj/MuonEfficiencyCorrections_Dict.cxx
  Linking ../StandAlone/libMuonEfficiencyCorrections.so
  Linking ../StandAlone/libMuonEfficiencyCorrections.a
  compiling */atlas-analysis/MuonMomentumCorrections (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/SmearingClass.cxx
  Compiling ../Root/SmearingClass.cxx
  Running rootcint
  Compiling ../obj/MuonMomentumCorrections_Dict.cxx
  Linking ../StandAlone/libMuonMomentumCorrections.so
  Linking ../StandAlone/libMuonMomentumCorrections.a
  compiling */atlas-analysis/PileupReweighting (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TPileupReweighting.cxx
  Compiling ../Root/TPileupReweighting.cxx
  Running rootcint
  Compiling ../obj/PileupReweighting_Dict.cxx
  Linking ../StandAlone/libPileupReweighting.so
  Linking ../StandAlone/libPileupReweighting.a
  compiling */atlas-analysis/JetUncertainties (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/UJUncertaintyProvider.cxx
  Making dependency for ../Root/MultijetJESUncertaintyProvider.cxx
  Making dependency for ../Root/JESUtils.cxx
  Making dependency for ../Root/JESUncertaintyProvider.cxx
  Compiling ../Root/JESUtils.cxx
  Compiling ../Root/JESUncertaintyProvider.cxx
  Compiling ../Root/MultijetJESUncertaintyProvider.cxx
  Compiling ../Root/UJUncertaintyProvider.cxx
  Running rootcint
  Compiling ../obj/JetUncertainties_Dict.cxx
  Linking ../StandAlone/libJetUncertainties.a
  Linking ../StandAlone/libJetUncertainties.so
  compiling */atlas-analysis/MissingETUtility (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/TESUncertaintyProvider.cxx
  Making dependency for ../Root/METUtility.cxx
  Compiling ../Root/METUtility.cxx
  Compiling ../Root/TESUncertaintyProvider.cxx
  Running rootcint
  Compiling ../obj/MissingETUtility_Dict.cxx
  Linking ../StandAlone/libMissingETUtility.so
  Linking ../StandAlone/libMissingETUtility.a
  compiling */atlas-analysis/MuonIsolationCorrection (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/IsoConfig.cxx
  Making dependency for ../Root/CorrectCaloIso.cxx
  Compiling ../Root/CorrectCaloIso.cxx
  Compiling ../Root/IsoConfig.cxx
  Running rootcint
  Compiling ../obj/MuonIsolationCorrection_Dict.cxx
  Linking ../StandAlone/libMuonIsolationCorrection.so
  Linking ../StandAlone/libMuonIsolationCorrection.a
  compiling */atlas-analysis/TrigMuonEfficiency (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MuonTriggerMatching.cxx
  Making dependency for ../Root/MuonHypothesis.cxx
  Making dependency for ../Root/LeptonTriggerSF.cxx
  Making dependency for ../Root/LeptonTriggerMatching.cxx
  Making dependency for ../Root/HSG3TrigLeptonSFTool.cxx
  Making dependency for ../Root/ElectronTriggerMatching.cxx
  Compiling ../Root/ElectronTriggerMatching.cxx
  Compiling ../Root/LeptonTriggerMatching.cxx
  Compiling ../Root/MuonHypothesis.cxx
  Compiling ../Root/LeptonTriggerSF.cxx
  Compiling ../Root/MuonTriggerMatching.cxx
  Compiling ../Root/HSG3TrigLeptonSFTool.cxx
  Running rootcint
  ../Root/MuonTriggerMatching.cxx: In member function 'double MuonTriggerMatching::matchedTrackDetail(MuonTriggerMatching::EFmuon&, const MuonTriggerMatching::EFmuon&, double, double, const std::string&, const std::string&, const std::string&)':
  ../Root/MuonTriggerMatching.cxx:398: warning: unused variable 'vIsoContainer'
  ../Root/MuonTriggerMatching.cxx:412: warning: comparison between signed and unsigned integer expressions
  Compiling ../obj/TrigMuonEfficiency_Dict.cxx
  Linking ../StandAlone/libTrigMuonEfficiency.so
  Linking ../StandAlone/libTrigMuonEfficiency.a
  compiling */atlas-analysis/egammaEvent (glob)
  Making dependency for ../Root/LinkDef.h
  Running rootcint
  Warning: link requested for unknown srcfile egammaEvent/egammaPIDdefs.h ./../Root/LinkDef.h:9:
  Compiling ../obj/egammaEvent_Dict.cxx
  Linking ../StandAlone/libegammaEvent.so
  Linking ../StandAlone/libegammaEvent.a
  compiling */atlas-analysis/IsolationScaleFactors (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MuonIsolationSF.cxx
  Making dependency for ../Root/ElecIsolationSF.cxx
  Compiling ../Root/ElecIsolationSF.cxx
  Compiling ../Root/MuonIsolationSF.cxx
  Running rootcint
  Compiling ../obj/IsolationScaleFactors_Dict.cxx
  Linking ../StandAlone/libIsolationScaleFactors.a
  Linking ../StandAlone/libIsolationScaleFactors.so
  compiling /ho/atlas-analysis/ggFReweighting
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/ggFReweighting.cxx
  Compiling ../Root/ggFReweighting.cxx
  Running rootcint
  Compiling ../obj/ggFReweighting_Dict.cxx
  Linking ../StandAlone/libggFReweighting.so
  Linking ../StandAlone/libggFReweighting.a
  compiling */atlas-analysis/HWWNtupleCode
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
  Compiling ../Root/EFEventTrigD3PDObject.cxx
  Compiling ../Root/Config.cxx
  Compiling ../Root/EventInfoD3PDObject.cxx
  Compiling ../Root/CalculateHelper.cxx
  Compiling ../Root/GenEventD3PDObject.cxx
  Compiling ../Root/ElectronD3PDObject.cxx
  Compiling ../Root/GetVtxWeight.cxx
  Compiling ../Root/Jet6LCD3PDObject.cxx
  Compiling ../Root/Jet4LCD3PDObject.cxx
  Compiling ../Root/JetTruthD3PDObject.cxx
  Compiling ../Root/Jetkt6LCD3PDObject.cxx
  Compiling ../Root/JetD3PDObject.cxx
  Compiling ../Root/KFRescaler.cxx
  Compiling ../Root/L1EventTrigD3PDObject.cxx
  Compiling ../Root/METD3PDObject.cxx
  Compiling ../Root/MuonD3PDObject.cxx
  Compiling ../Root/MyElectronTools.cxx
  Compiling ../Root/MyJetTools.cxx
  Compiling ../Root/MyMetTools.cxx
  Compiling ../Root/MyMuonTools.cxx
  Compiling ../Root/MyTriggerTools.cxx
  Compiling ../Root/PtllReweighting.cxx
  Compiling ../Root/TauD3PDObject.cxx
  Compiling ../Root/TauPolReweighting.cxx
  Compiling ../Root/TopHfor.cxx
  Compiling ../Root/TrackD3PDObject.cxx
  Compiling ../Root/TrackMetTool.cxx
  Compiling ../Root/TrigD3PDObject.cxx
  Compiling ../Root/TruthD3PDObject.cxx
  Compiling ../Root/VarHandle.cxx
  Compiling ../Root/VertexD3PDObject.cxx
  Compiling ../Root/bunchPosition.cxx
  Compiling ../Root/mHreweighting.cxx
  Running rootcint
  Compiling ../obj/HWWNtupleCode_Dict.cxx
  Linking ../StandAlone/libHWWNtupleCode.so
  Linking ../StandAlone/libHWWNtupleCode.a
  compiling */atlas-analysis/HWWlvlvCode (glob)
  Making dependency for ../Root/LinkDef.h
  Making dependency for ../Root/MyMuonTools_lvlv.cxx
  Making dependency for ../Root/MyJetTools_lvlv.cxx
  Making dependency for ../Root/MyElectronTools_lvlv.cxx
  Making dependency for ../Root/HWWlvlvCode.cxx
  Compiling ../Root/HWWlvlvCode.cxx
  Compiling ../Root/MyElectronTools_lvlv.cxx
  Compiling ../Root/MyMuonTools_lvlv.cxx
  Compiling ../Root/MyJetTools_lvlv.cxx
  Running rootcint
  ../Root/HWWlvlvCode.cxx: In member function 'virtual Bool_t HWWlvlvCode::Process(Long64_t)':
  ../Root/HWWlvlvCode.cxx:1056: warning: comparison between signed and unsigned integer expressions
  ../Root/HWWlvlvCode.cxx:1838: warning: comparison between signed and unsigned integer expressions
  ../Root/HWWlvlvCode.cxx:1839: warning: comparison between signed and unsigned integer expressions
  Compiling ../obj/HWWlvlvCode_Dict.cxx
  Linking ../StandAlone/libHWWlvlvCode.so
  Linking ../StandAlone/libHWWlvlvCode.a
  root [0] 
  Processing */atlas-analysis/RootCore/scripts/load_packages.C... (glob)

run job
-------
  $ cd HWWlvlvCode/Run/
  $ ./run_MC12a_DATA.sh 125 Nominal
  Mass = 125
  Type = Nominal
  start: * ??:??:?? CDT ???? (glob)
TODO: figure out error below
  ./run_MC12a_DATA.sh: line 18: root: command not found
  stop: * ??:??:?? CDT ???? (glob)