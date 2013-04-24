#!/bin/bash
DEBUG=false
HELP=false
while getopts dh option
do
    case "${option}"
        in
        d) DEBUG=true;;
        h) HELP=true;;
    esac
done

if [ $HELP == true ]
then
    echo "Usage: compile.sh [-h] [-d]"
    echo "   -d: Debug build, does not run minify"
    exit
fi

for f in *.dart
do
    if ! grep -Fq "main()" $f # Only compile dart files that contain main()
    then
        continue
    fi
    echo $f
    if [ $DEBUG == true ]
    then
        dart2js -o${f%.dart}.js -c $f
    else
        dart2js -o${f%.dart}.js --minify $f
    fi
done
cd ..

