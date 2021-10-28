#!/bin/bash

cd /workspaces/zmk/app
west build -d build/left -b nice_nano -- -DSHIELD=kyria_left -DZMK_CONFIG=/workspaces/zmk-config/config/
cp /workspaces/zmk/app/build/left/zephyr/zmk.uf2 /workspaces/zmk-config/build/left.uf2
west build -d build/right -b nice_nano -- -DSHIELD=kyria_right -DZMK_CONFIG=/workspaces/zmk-config/config/
cp /workspaces/zmk/app/build/right/zephyr/zmk.uf2 /workspaces/zmk-config/build/right.uf2
