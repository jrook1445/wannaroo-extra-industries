#!/bin/bash
grfcodec -e wannaroo-extra-industries.nfo .
if [ $? -eq 0 ]
then
    cp -i wannaroo-extra-industries.nfo generated
    rm -i wannaroo-extra-industries.nfo
    cp wannaroo-extra-industries.grf wannaroo-extra-industries
    cp README.md wannaroo-extra-industries/readme.txt
    cp LICENSE wannaroo-extra-industries/license.txt
    cp changelog.txt wannaroo-extra-industries
    tar cvf wannaroo-extra-industries.tar wannaroo-extra-industries
    cp -i wannaroo-extra-industries.tar $HOME/.openttd/newgrf
    echo -e "\e[92m*** build successful ***"
else
    echo -e "\e[91m*** grfcodec could not build newgrf ***"
fi
echo "grfcodec info:"
echo "---------------"
grfcodec -v

