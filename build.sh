#!/bin/bash
# change the value of NMLC to reference your own nmlc installation
NMLC="pyrun $HOME/Downloads/openttd/nml-0.4.5/nmlc"
./clean.sh
mkdir wannaroo-extra-industries
gcc -C -E -nostdinc -x c-header wannaroo-extra-industries.pnml > wannaroo-extra-industries.nml
$NMLC --nfo=wannaroo-extra-industries.edit-me.nfo wannaroo-extra-industries.nml
if [ $? -eq 0 ]
then
    echo -e "\e[92m*** nfo generation successful ***"
else
    echo -e "\e[91m*** nmlc could not generate nfo ***"
fi
echo "NML:"
echo "---------------"
$NMLC --version

