#!/usr/bin/env bash

IFS=$(echo -en "\n\b")

files_to_render=(
    "Einsy-base" \
    "Einsy-doors" \
    "Einsy-hinges" \
    "Extruder-cable-clip" \
    "Heatbed-cable-clip" \
    "Heatbed-cable-clip_for_8mm_sleeve" \
    "LCD-cover-ORIGINAL-MK3" \
    "LCD-knob" \
    "PSU-cover-MK3" \
    "Spool-holder" \
    "cable-holder" \
    "extruder-body" \
    "extruder-cover" \
    "extruder-idler-plug" \
    "extruder-idler" \
    "filament-sensor-cover" \
    "heatbed-cable-cover-no-screw" \
    "heatbed-cable-cover-no-screw_8mm_sleeve" \
    "heatbed-cable-cover" \
    "heatbed-cable-cover_8mm_sleeve" \
    "lcd-supports" \
    "nozzle-fan-45deg-support" \
    "nozzle-fan-45deg" \
    "nozzle-fan" \
    "raspberry_cover" \
    "rpi-zero-frame" \
    "x-carriage-back" \
    "x-carriage" \
    "x-end-idler" \
    "x-end-motor" \
    "y-belt-holder" \
    "y-belt-idler" \
    "y-motor-holder" \
    "y-rod-holder" \
    "z-axis-bottom" \
    "z-axis-top" \
    "z-screw-cover"
)

if [[ $OSTYPE == "darwin" ]]
then
    locations=( \
        "/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD" \
        "$HOME/bin/openscad" \
        "$HOME/homebrew/bin/openscad" \
        "/usr/local/homebrew/bin/openscad"
    )

fi

if [[ $OSTYPE == "FreeBSD" ]]
then
    locations=( \
        "/usr/local/bin/openscad" \
        "/usr/bin/openscad"
    )
fi

if [[ $OSTYPE == "Linux" ]]
then
    locations=( \
        "/usr/bin/openscad" \
        "/usr/local/bin/openscad"
    )
fi

o="none"
for x in "${locations[@]}"
do
    if [[ -f "$x" ]]
    then
        o=$x
    fi
done
if [[ $o == "none" ]]
then
    echo "OpenSCAD binary not found"
    exit
fi

for f in ${files_to_render[@]}
do
    echo "[ ] Working on file: $f"
    $o --render -o stl/$f.stl scad/$f.scad
done
