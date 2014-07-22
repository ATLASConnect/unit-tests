prologue
--------
  $ cd ${TESTDIR}
  
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