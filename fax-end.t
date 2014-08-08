prologue
--------
  $ cd ${TESTDIR}

setup ALRB and ROOT
-------------------
  $ export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
  $ source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh > setup.txt 2>&1

  $ export RUCIO_ACCOUNT=jenkins
  $ localSetupFAX --rootVersion=current-SL6 --xrootdVersion=current-SL6 > setup-fax.txt 2>&1

create proxy
------------
  $ voms-proxy-init -voms atlas > output.txt 2>&1
  $ cat output.txt | tail -3
  Created proxy in /tmp/x509up_u21738.
  
  Your proxy is valid until * (glob)

  $ fax-is-dataset-covered user.ilijav.HCtest.1
  user.ilijav.HCtest.1 \tcomplete replicas: 56 \tincomplete: 0 (esc)

copy file from FAX to local disk
--------------------------------
  $ xrdcp $STORAGEPREFIX/atlas/rucio/user/ivukotic:group.test.hc.NTUP_SMWZ.root /tmp/myLocalCopy.root > xrdcp.txt 2>&1
  $ if cat xrdcp.txt | grep 100% >/dev/null; then echo success; fi
  success

  $ ls /tmp/myLocalCopy.root
  /tmp/myLocalCopy.root

clean up
--------
  $ rm /tmp/myLocalCopy.root
  $ ls /tmp/myLocalCopy.root
  ls: cannot access /tmp/myLocalCopy.root: No such file or directory
  [2]
