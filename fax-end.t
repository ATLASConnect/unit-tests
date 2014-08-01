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
  
  \x1b[1m\x1b[4m07 Jul 2014\x1b[0m (esc)
      There may be some voms-proxy errors (voms2.cern.ch and lcg-voms2.cern.ch).
       This can be ignored for now as there is a migration to new servers
       which are not yet switched on. However, at the end of the commands,
       you must see a successful attempt and obtain a valid proxy.
  
  $ export RUCIO_ACCOUNT=jenkins
  $ localSetupFAX --rootVersion=current-SL6 --xrootdVersion=current-SL6
  Warning: Skipping this setup; grid middleware is already setup
  ************************************************************************
  Setting up rucio-clients version 0.1.12-2-p1
  Info: Not a redhat derived release; setting compatibility to slc6
  ************************************************************************
  *****************************************************************
  Setting up DQ2 Client version 2.5.0
   DQ2_LOCAL_SITE_ID is ROAMING
   To change this, create a file
     $ATLAS_LOCAL_ROOT_BASE/config/localDQ2ClientSetup.sh
   (or define $ALRB_localConfigDir)
   containing the line
     export DQ2_LOCAL_SITE_ID=<site from dq2-sources>
  *****************************************************************
  ************************************************************************
  Setting up ROOT version 5.34.19-x86_64-slc6-gcc47-opt
    Current GCC version: gcc (GCC) 4.4.7 20120313 (Red Hat 4.4.7-3)
  Setting up gcc version gcc472_x86_64_slc6
    Python version in your path is 2.6.6
    Python version used to build ROOT is 2.7
  Setting up Python version 2.7.3-x86_64-slc6-gcc47
  Setting up XRootD version 4.0.2-x86_64-slc6
  ************************************************************************
   Tip for _this_ standalone ROOT and grid (ie prun) submission:
    avoid --athenaTag if you do not need athena
    use --rootVer=5.34/19 --cmtConfig=x86_64-slc6-gcc47-opt
  ************************************************************************
  Setting up FAXTools 00-00-20
  # trying to resolve localredirector...
  # localredirector does not resolve.
  # getting client coordinates...
  # getting FAX endpoints status from SSBrepeater...
  # getting FAX endpoints coordinates from AGISrepeater...
  #* (glob)
  # looking up endpoint address in AGISrepeater...
  # found corresponding endpoint:* (glob)
  export STORAGEPREFIX=* (glob)
  ...Type testFAX to test FAX

create proxy
------------
  $ voms-proxy-init -voms atlas > output.txt 2>&1
  $ cat output.txt | tail -3
  Created proxy in /tmp/x509up_u21738.
  
  Your proxy is valid until * (glob)

  $ fax-is-dataset-covered user.ilijav.HCtest.1
  user.ilijav.HCtest.1 \tcomplete replicas: 55 \tincomplete: 0 (esc)

copy file from FAX to local disk
--------------------------------
  $ xrdcp $STORAGEPREFIX/atlas/rucio/user/ivukotic:group.test.hc.NTUP_SMWZ.root /tmp/myLocalCopy.root > xrdcp.txt 2>&1
  $ if cat xrdcp.txt | grep 100% >/dev/null; then echo success; fi
  success

clean up
--------
  $ rm /tmp/myLocalCopy.root
  $ ls /tmp/myLocalCopy.root
  ls: cannot access /tmp/myLocalCopy.root: No such file or directory
  [2]
