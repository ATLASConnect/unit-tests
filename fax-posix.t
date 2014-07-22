prologue
--------
  $ cd ${TESTDIR}

posix access
------------
  $ touch posix-test.txt

writing into faxbox
  $ mv posix-test.txt ~/faxbox

check
  $ cd ~/faxbox
  $ ls posix-test.txt
  posix-test.txt

write out of faxbox
  $ mv posix-test.txt ${TESTDIR}/retrieved.txt

check
  $ cd ${TESTDIR}
  $ ls retrieved.txt
  retrieved.txt