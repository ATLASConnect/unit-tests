verify transfers succeeded
--------
  $ cd ${TESTDIR}

  $ cat gb_to_fax.txt | head -2
  Task ID: * (glob)
  Type <CTRL-C> to cancel or bg<ENTER> to background

  $ cat fax_to_gb.txt | head -2
  Task ID: * (glob)
  Type <CTRL-C> to cancel or bg<ENTER> to background

  $ cat gb_ls.txt
  ~/fax-globus_test.txt

  $ cd ~/faxbox
  $ ls globus_test.txt
  globus_test.txt
  $ rm globus_test.txt
