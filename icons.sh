#!/bin/bash

ARRAY=( "icon-spotlight-ios5.png":"29"
        "icon-spotlight-ios5@2x.png:58"
        "icon-spotlight-ios5@3x.png:87"
        "icon-spotlight@2x.png:80"
        "icon-spotlight@3x.png:120"
        "icon-ios5.png:57"
        "icon-ios5@2x.png:114"
        "icon@2x.png:120"
        "icon@3x.png:180"
        "ipad-settings.png:29"
        "ipad-settings@2x.png:58"
        "ipad-spotlight.png:40"
        "ipad-spotlight@2x.png:80"
        "ipad-spotlight-ios5.png:50"
        "ipad-spotlight-ios5@2x.png:100"
        "icon-ipad-ios5.png:72"
        "icon-ipad-ios5@2x.png:144"
        "icon-ipad.png:76"
        "icon-ipad@2x.png:152"
        "carplay.png:120"
        "watch-notification-small.png:48"
        "watch-notification-large.png:55"
        "watch-companion-setting@2x.png:58"
        "watch-companion-setting@3x.png:87"
        "watch-home.png:80"
        "watch-long-look.png:88"
        "watch-short-look-small.png:172"
        "watch-short-look-large.png:196"
        )

mkdir renderings

for icon in "${ARRAY[@]}" ; do
    FILE_NAME="${icon%%:*}"
    SIZE="${icon##*:}"

    eval "cp $1 renderings/$FILE_NAME"
    eval "sips -z $SIZE $SIZE renderings/$FILE_NAME"
done