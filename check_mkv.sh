#!/usr/bin/env bash

names=`grep "\- atk_2024" ./attaque/recit/2024_recit/script_justice_s.draft | cut -d' ' -f2`
for name in $names
do 
    fres=`find -name "$name.mkv"`

    if [[ -z "$fres" ]]
    then
        fres=`find ~/studio -name "$name.mkv"`
        if [[ -z "$fres" ]]
        then
            echofmt "{red}$name"
            echo -n
        else
            echofmt "{yellow}$name"
            echo -n
        fi
    else
        echofmt "{green}$fres"
        echo -n
    fi
done
