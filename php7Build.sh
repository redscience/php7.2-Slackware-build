#!/bin/sh

# Build and package mod_php on Slackware 14.02.
# by:  ted sun <redscience.official@gmail.com>

# All rights reserved.

# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


CWD=$(pwd)
wget -c https://downloads.php.net/~davey/php-7.1.0RC1.tar.xz -P $CWD/php/
wget -c https://slackbuilds.org/mirror/slackware/slackware-14.2/source/n/alpine/alpine-2.20.tar.xz -P $CWD/alpine/
echo ""
echo "Enter root password!"
su -c "sh $CWD/php-7.2/php.SlackBuild"
find /etc -name '*php*' -delete
upgradepkg --reinstall --install-new /tmp/php-*-$( uname -m )*.txz
exit 0
"
echo "Instalation Complete!"
