echo $pwd
total=$(ls /home/users/lyt1314/ee372/aloe-sky130/bgr_top/interface/ | grep gen | wc -l)

# echo "david----david"
echo ${total}
# for ((i=0; i<${total}; i++))
# do
#     export DIR=gen-0-id-${i};
#     innovus -overwrite -64 -nowin -init START.tcl -log logs/run.log &
# done
# wait
# echo "finished parallel_run.sh!!!"
