#! /usr/bin/env bash

cmdname=${0##*/}

helpmsg () {
    echo "Brief:"
    echo "    extract *.rar, *.zip, *.tar.gz, *.jar etc"
    echo "Usage:"
    echo "    $cmdname [file]"
    echo "Try again"
    echo ""
}

if [[ $# -lt 1 ]]; then
    helpmsg
    exit 1
fi

for i in $@; do
    extension="${i##*.}"
    filename="${i%.*}"
    filenamelen=${#filename}
    if [[ $extension == "zip" && $filenamelen -gt 0 ]]; then
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        unzip "$i" -d $filename
    elif [[ $extension == "gz" || $extension == "tar.gz" || $extension == "tar" ]]; then
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        tar -zxvf $i
    elif [[ $extension == "rar" ]]; then
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        mkdir $filename
        mv $i $filename
        cd $filename
        unrar x $i
        mv "$i" ..
        cd ..
    elif [[ $extension == "jar" ]];then
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        mkdir $filename
        mv $i $filename
        cd $filename
        jar xf $i
        mv $i ..
        cd ..
    else
        if [[ -d $filename ]]; then
            mv $filename "$filename.old"
        fi
        tar -zxvf $i
    fi
done