alias s="ssh -AX"

if [  -z $DISPLAY ]; then
   export DISPLAY=:0.0
fi
