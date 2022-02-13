#!/bin/bash

# Launch example:
# #here you can put launch example.
# #ex: ./mycoolprogram --init --oslinux

NAME=`basename $0`
VERSION=1.0.0
DESCRIPTION="
    _._._._._._._._._._._._._._._
    ${NAME} is a simple tool for
    You can write anything here!
                  :D
    _._._._._._._._._._._._._._._
"
AUTHOR="Your Name"
LICENSE_YEAR="2022"
LICENSE_RAW="Copyright ${LICENSE_YEAR} ${AUTHOR}
Permission is hereby granted, free of charge,
to any person obtaining a copy of this software
and associated documentation files (the \"Software\"),
to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the
Software, and to permit persons to whom the Software is furnished
to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."

LOG(){
echo "${NAME}: ${1}"
}
PASS(){
:
}
RETURN(){
retval="$*"
}
EXIT(){
exit
}
HELP(){
ART_NXT="______________________________________________________________________________________________________"
c="$NAME "
HELP_RAW="${ART_NXT}
About:
    Name: $NAME
    Version: v$VERSION
    Description: $DESCRIPTION
    Author: $AUTHOR
Commands:
    ${c}[-h] || [--h] || [-help] || [--help]
        See help for $NAME & view commands list
    ${c}[-u] || [--u] || [-use] || [--use]
        You can add your \*OWN\* cool
        description here! Good luck
        with that.
    ${c}<-r> || <--r> || <-required_argument> || <--required_argument>
        Yes, you can add required
        & non-existing arguments too! :)

Example:
    ${c}- abc -v def
License:
    MIT License
License (description):
    Copyright ${LICENSE_YEAR} ${AUTHOR}
    Permission is hereby granted, free of charge,
    to any person obtaining a copy of this software
    and associated documentation files (the \"Software\"),
    to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge,
    publish, distribute, sublicense, and/or sell copies of the
    Software, and to permit persons to whom the Software is furnished
    to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
$ART_NXT
"
printf "$HELP_RAW"
}
CLS(){
clear || cls || :
}

CLS
if [ "$1" == "-u" ] || [ "$1" == "--u" ] || [ "$1" == "-use" ] || [ "$1" == "--use" ]; then
    LOG "Hello, this is an example of usage!"
elif [ "$1" == "-help" ] || [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ "$1" == "--h" ]; then
    HELP
else
    LOG "No commands specified, type
\`${NAME} -help\`,
\`${NAME} --help\`,
\`${NAME} -h\`,
or
\`${NAME} --h\`
for help.
${NAME}, version v${VERSION}"
fi
