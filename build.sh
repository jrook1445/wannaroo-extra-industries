#!/bin/bash
# change the value of NMLC to reference your own nmlc installation
#NMLC="pyrun $HOME/Downloads/openttd/nml-0.5.0/nmlc"
NMLC="pyrun $HOME/Downloads/openttd/nml-0.5.1/nmlc"
./clean.sh
mkdir wannaroo-extra-industries
gcc -C -E -nostdinc -x c-header wannaroo-extra-industries.pnml > wannaroo-extra-industries.nml
$NMLC -c -p DEFAULT --clear-orphaned wannaroo-extra-industries.nml
if [ $? -eq 0 ]
then
    cp wannaroo-extra-industries.nml generated
    cp wannaroo-extra-industries.grf wannaroo-extra-industries
    cp README.md wannaroo-extra-industries/readme.txt
    cp LICENSE wannaroo-extra-industries/license.txt
    cp changelog.txt wannaroo-extra-industries
    tar cvf wannaroo-extra-industries.tar wannaroo-extra-industries
    cp -i wannaroo-extra-industries.tar $HOME/.openttd/newgrf
    #cp -i wannaroo-extra-industries.grf $HOME/.openttd/newgrf
    echo -e "\e[92m*** build successful ***"
else
    echo -e "\e[91m*** nmlc could not build newgrf ***"
fi
echo "NML info:"
echo "---------------"
$NMLC --version

