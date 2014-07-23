prologue
--------
  $ cd ${TESTDIR}

posix access (http write not up)
------------
  $ touch http-test.txt

writing into faxbox
  $ mv http-test.txt ~/faxbox

check
  $ cd ~/faxbox
  $ ls http-test.txt
  http-test.txt
  $ chmod 644 http-test.txt

http read
---------
write out of faxbox
  $ cd ${TESTDIR}
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://faxbox.usatlas.org/user/jenkins/http-test.txt

verify file received
  $ ls http-test.txt
  $ http-test.txt

clean up
--------
  $ cd ~/faxbox
  $ rm http-test.txt
  $ ls http-test.txt
  ls: cannot access http-test.txt: No such file or directory
  [2]