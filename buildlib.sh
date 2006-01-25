#!/bin/bash

root=$1
shift

if [ -f $root/.nodepends ] ; then
    echo "***depends disabled*** use gmake yesdepends to re-enable"
    exit 0
fi



install=
base=http://www.freeswitch.org/downloads/libs

if [ ! -z $1 ] && [ $1 = install ] ; then
    install=1
    shift
fi

tar=$1
shift

cd $root/libs/.
CFLAGS=
LDFLAGS=
GMAKEFLAGS=

if [ -d $tar ] ; then
    uncompressed=$tar
    tar=
else
    uncompressed=`echo $tar | sed "s/\.tar\.gz//g"`
    uncompressed=`echo $uncompressed | sed "s/\.tgz//g"`

    if [ ! -f $tar ] ; then
	rm -fr $uncompressed
	wget $base/$tar
	if [ ! -f $tar ] ; then
	    echo cannot find $tar
	    exit
	fi
    fi
    if [ ! -d $uncompressed ] ; then
	tar -zxvf $tar
    fi
fi

if [ -f $uncompressed/.complete ] ; then
    echo $uncompressed already installed
    exit 0
fi

cd $uncompressed
gmake clean 2>&1
sh ./configure $@

if [ $? == 0 ] ; then
    gmake
else 
    echo ERROR
    exit 1
fi

if [ ! -z $install ] ; then
    gmake install
    ldpath=`which ldconfig`
    if [ ! -z $ldpath ] ; then
	ldconfig 2>&1
    fi
fi

if [ $? == 0 ] ; then
    touch .complete
else 
    echo ERROR
    exit 1
fi

exit 0
