unit-tests
==========

This repository contains the standard unit tests for the ATLAS Connect tutorials and system status tests specific to ATLAS Connect.

These unit tests perform the following functions:
  1. Ensure that the ATLAS Connect job submission infrastructure is working properly
  2. Ensure that our tutorials are up to date with the latest features of ATLAS Connect. All of the tutorials can be found in the [ATLAS Connect Handbook](https://ci-connect.atlassian.net/wiki/display/AC/ATLAS+Connect). 

ATLAS Connect tutorial tests
----------------------------
In general, the following tests run the same commands that each corresponding ATLAS Connect Handbook tutorial asks users to follow in order to ensure that each command produces the expected output. The tests also check that any given source code functions correctly. The relevant tutorial unit tests are listed here, along with links to the corresponding ConnectBook pages. Jenkins build information for these tests can be found [here](http://build.ci-connect.net:8080/job/ATLAS_Connect_Tests/view/ATLAS_Connect_Tutorials/).

fax-end.t - Unit test for the ["FAX for End Users" tutorial](https://twiki.cern.ch/twiki/bin/viewauth/AtlasComputing/UsingFAXforEndUsersTutorial).

proof.t - Unit test for the ["PROOF on Demand" tutorial](https://ci-connect.atlassian.net/wiki/display/AC/PROOF+on+Demand).

quickstart.t - Unit test for the [Quickstart tutorial](https://ci-connect.atlassian.net/wiki/display/AC/ATLAS+Connect+Quickstart).

root.t - Unit test for the ["Run a simple ROOT job" tutorial](https://ci-connect.atlassian.net/wiki/display/AC/Run+a+simple+ROOT+job).

rootcore.t - Unit test for the [RootCore application example](https://ci-connect.atlassian.net/wiki/display/AC/RootCore+Example).

System status tests
-------------------
The following tests check to ensure that various systems in place on ATLAS Connect are functioning properly. Jenkins build information for these tests can be found [here](http://build.ci-connect.net:8080/job/ATLAS_Connect_Tests/view/ATLAS_System_Tests/).

cvmfs.t - Unit test to ensure that the /cvmfs directory exists and contains the necessary files to set up ATLAS Local Root Base (ALRB).

fax-globus.t - Unit test to ensure that users can read from and write into FAXbox via Globus Online.

fax-http.t - Unit test to ensure that users can read from FAXbox via HTTP. Note: functionality for writing into FAXbox via HTTP has not been implemented yet. 

fax-posix.t - Unit test to ensure that users can read from and write into FAXbox via POSIX.

fax-xrootd.t - Unit test to ensure that users can read from and write into FAXbox via XRootD.

htcondor_transfer.t - Unit test to ensure that users can submit jobs and transfer files using HTCondor.

oasis.t - Unit test to ensure that users can access and download software using the OSG Application and Software Installation Service (OASIS).