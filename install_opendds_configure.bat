cd C:\
svn co svn://svn.dre.vanderbilt.edu/DOC/DDS/trunk DDS
cd "C:\DDS"
perl configure
echo setenv
call setenv.cmd
echo msbuild
type nul > build_dds.log
msbuild DDS_TAOv2_all.sln /p:Configuration=Debug  > build_dds.log
copy build_dds.log c:\vagrant\build_dds.log

