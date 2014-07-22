prologue
--------
  $ cd ${TESTDIR}

setup
-----
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
       which are not yet switched on. However, at the end of the commands,
       you must see a successful attempt and obtain a valid proxy.
  
  $ localSetupXRootD
  Setting up XRootD version * (glob)

faxbox
------
  $ touch fax-xrootd.txt
  $ xrdcp -fv fax-xrootd.txt root://faxbox.usatlas.org://user/jenkins/fax-xrootd.txt
  [*][100%][==================================================][*B/s] (glob)

  $ xrdcp root://faxbox.usatlas.org://user/jenkins/fax-xrootd.txt retrieved.txt
  [*][100%][==================================================][*B/s] (glob)

check
  $ ls retrieved.txt
  retrieved.txt

clean-up
--------
  $ cd ~/faxbox
  $ rm fax-xrootd.txt