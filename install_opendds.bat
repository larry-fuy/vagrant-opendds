REM assuming chocolatey is installed. Otherwise
REM (install chocolatey) This is a bug in powershell v2. So just download the predefined package
type nul > c:\vagrant\install_log.txt
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))"  2>&1 > c:\vagrant\install_log.txt 
SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


REM install required softwares
choco install svn
set PATH=%PATH%;%PROGRAMFILES(X86)%\Subversion\bin
REM check out opendds source code
cd C:\
svn checkout svn://svn.dre.vanderbilt.edu/DOC/DDS/trunk
choco install vcexpress2010
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
choco install ActivePerl
set PATH=C:\Perl64\bin;%PATH%
cd "C:\trunk"
perl configure
echo setenv
call setenv.cmd
echo msbuild
type nul > build_dds.log
msbuild DDS_TAOv2_all.sln /p:Configuration=Debug  > build_dds.log
copy build_dds.log c:\vagrant\build_dds.log

