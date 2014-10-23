cd C:\
svn co svn://svn.dre.vanderbilt.edu/ACE/autobuild/trunk autobuild
mkdir -p C:\tao_builds\taoadmin\dds_build_win
xcopy C:\vagrant\dds_build_win.xml C:\tao_builds\taoadmin\dds_build_win
perl -w C:\autobuild\autobuild.pl -v2 dds_build_win.xml
