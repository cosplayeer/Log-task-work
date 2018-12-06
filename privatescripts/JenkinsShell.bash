cd Shell
oldsuffix="sh"
newsuffix="x"
cd ./SCRIPTS
dir=$(eval pwd)
cp ./ReMAPS_env1.bash ./ReMAPS_env1.bash_temp
cp ./ReMAPS_env2.bash ./ReMAPS_env2.bash_temp
for file in $(ls *${oldsuffix})
    do
        name=$( ls ${file} | cut -d . -f 1 )
        shc -r -T -v -f $file
        rm *.x.c
        cp ${file}.${newsuffix} ${file}
    done
cp ./ReMAPS_env2.bash_temp ./ReMAPS_env2.bash
cp ./ReMAPS_env2.bash_temp ./ReMAPS_env2.bash
cd ./mos
for file in $(ls *${oldsuffix})
    do
        name=$( ls ${file} | cut -d . -f 1 )
        shc -r -T -v -f $file
        rm *.x.c
        cp ${file}.${newsuffix} ${file}
    done
cd ..
cd ./postprocess
for file in $(ls *${oldsuffix})
    do
        name=$( ls ${file} | cut -d . -f 1 )
        shc -r -T -v -f $file
        rm *.x.c
        cp ${file}.${newsuffix} ${file}
    done
cd ..
cd ./postprocess2
for file in $(ls *${oldsuffix})
    do
        name=$( ls ${file} | cut -d . -f 1 )
        shc -r -T -v -f $file
        rm *.x.c
        cp ${file}.${newsuffix} ${file}
    done
cd ..
cd ./terrainexport
for file in $(ls *${oldsuffix})
    do
        name=$( ls ${file} | cut -d . -f 1 )
        shc -r -T -v -f $file
        rm *.x.c
        cp ${file}.${newsuffix} ${file}
    done
cd ..
cd ../..
#compress build
tar -zcvf ${Product}_${Version}_${Deployment}_${Platform}_${BUILD_ID}.tar.gz --exclude=Shell/MSPinstaller Shell 