#nvidia-smi --query-gpu=memory.used,memory.total --format=csv,noheader
USED=`nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits`
TOTAL=`nvidia-smi --query-gpu=memory.total --format=csv,noheader,nounits`
RESULT=$(echo "scale=2; $USED / $TOTAL *100" | bc)
echo "GPU $RESULT%"
