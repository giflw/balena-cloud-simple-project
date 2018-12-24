while true; do
    # those variables are setted via cloud
    # AUDIO_OUTPUT="JACK" # "HDMI" ou "AUTO"
    if [ "$AUDIO_OUTPUT" = "HDMI" ]; then
        echo "Setting audio output to HDMI"
        amixer cset numid=3 2
    elif [ "$AUDIO_OUTPUT" = "JACK" ]; then
        echo "Setting audio output to JACK"
        amixer cset numid=3 1
    else # AUTO
        echo "Setting audio output to AUTO"
        amixer cset numid=3 0
    fi
    # AUDIO_VOLUME="50" # 50%: any number betwen 0 and 100
    if [ "X${AUDIO_VOLUME}" != "X" ]; then
        echo "Setting audio volume to ${AUDIO_VOLUME}"
        amixer sset 'PCM' ${AUDIO_VOLUME}%
    fi
    amixer sget PCM
    # MPLAYER_OPTS="-quiet"
    # MPLAYER_URL="http://216.155.155.89:8000/imperial32k.aac"
    mplayer $MPLAYER_OPTS $MPLAYER_URL
    sleep 3
done