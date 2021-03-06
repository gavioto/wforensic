#!/bin/sh

PYBIN=`which python`

if [ -z "$PYBIN" ]
then
	echo "Cannot find python binary"
	exit -1
fi

echo -n $($PYBIN --version)

echo "
    ==========================================================================
    =  ====  ====  ==        =================================================
    =  ====  ====  ==  =======================================================
    =  ====  ====  ==  =======================================================
    =  ====  ====  ==  =========   ===  =   ====   ===  = ====   ===  ===   ==
    =   ==    ==  ===      ====     ==    =  ==  =  ==     ==  =  ======  =  =
    ==  ==    ==  ===  ========  =  ==  =======     ==  =  ===  ====  ==  ====
    ==  ==    ==  ===  ========  =  ==  =======  =====  =  ====  ===  ==  ====
    ===    ==    ====  ========  =  ==  =======  =  ==  =  ==  =  ==  ==  =  =
    ====  ====  =====  =========   ===  ========   ===  =  ===   ===  ===   ==
    ========================================================================== v0.3b
"

# in order to handle 40X errors and serve static files the django server must be launched with '--insecure', you can override it by using apache/nginx/XXXX web server
$PYBIN wforensic/manage.py runserver --insecure

exit $?
