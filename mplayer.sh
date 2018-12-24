while true; do
    # those variables are setted via cloud
    # MPLAYER_OPTS="-quiet"
    # MPLAYER_URL="http://216.155.155.89:8000/imperial32k.aac" 
    mplayer $MPLAYER_OPTS $MPLAYER_URL | logger --tag mplayer --stderr
    sleep 3
done