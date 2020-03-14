#!/bin/bash
# author: xuanyusan

function png2icns (){
    mkdir tmp.iconset
    sips -z 16 16     $inputfile --out tmp.iconset/icon_16x16.png
    sips -z 32 32     $inputfile --out tmp.iconset/icon_16x16@2x.png
    sips -z 32 32     $inputfile --out tmp.iconset/icon_32x32.png
    sips -z 64 64     $inputfile --out tmp.iconset/icon_32x32@2x.png
    sips -z 128 128   $inputfile --out tmp.iconset/icon_128x128.png
    sips -z 256 256   $inputfile --out tmp.iconset/icon_128x128@2x.png
    sips -z 256 256   $inputfile --out tmp.iconset/icon_256x256.png
    sips -z 512 512   $inputfile --out tmp.iconset/icon_256x256@2x.png
    sips -z 512 512   $inputfile --out tmp.iconset/icon_512x512.png
    sips -z 1024 1024 $inputfile --out tmp.iconset/icon_512x512@2x.png
    iconutil -c icns tmp.iconset -o $outputname.icns
    rm -rf tmp.iconset
}
function icns2png (){
    iconutil -c iconset $inputfile
    mv ./logo.iconset/icon_512x512@2x.png ./$outputname.png
    rm -rf logo.iconset
}

echo [inputfile \(outputname\).\(icns/png\)]
read inputfile outputname
[ -z $outputname ] && outputname="logo"
filename="${inputfile%.*}"
fileext="${inputfile##*.}"
outputname="${outputname%.*}"
echo "------------------Begin------------------"
if [ -f "./$inputfile" ];then
    if [ $fileext = 'png' ];then
        png2icns
    elif [ $fileext = 'icns' ];then
        icns2png
    else
        echo "Err: filetype[$fileext] cannot be processed"
    fi
else
echo "Err: file[$inputfile] cannot be found"
fi
echo "-------------------End-------------------"

