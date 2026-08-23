#!/bin/bash

if wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -q '\[MUTED\]'; then
    echo '{"text":"🔇","tooltip":"Microphone: Muted","class":"muted"}'
else
    echo '{"text":"🎤","tooltip":"Microphone: On","class":"unmuted"}'
fi
