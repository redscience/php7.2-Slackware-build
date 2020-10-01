# php7.2-Slackware-build
Script to compile php 7.2 on Slackware 14.2
Installation

cd /tmp

git clone https://github.com/redscience/php7.2-Slackware-build.git

cd php7.2-Slackware-build

chmod +x ./php7Build.sh

./php7Build.sh

Assuming everything happened according to plan (the compile finished without errors), the finished package should be in the directory declared as "OUTPUT" in the SlackBuild script (this defaults to the /tmp directory). Use installpkg to install it; you'll probably want to move it to some other location for safekeeping after it's installed.

Enjoy
