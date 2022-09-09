# echo "begin parallel_run.sh"
# export directory="$(dirname $(dirname $PWD))/interface"
# dirs=$(ls $directory | grep gen )
# for dir in $dirs
#     do  
#         export DIR="$directory/$dir"
#         innovus -overwrite -64 -nowin -init START.tcl -cpus 8 -log logs/run.log &
#     done
#     wait
# echo "finished parallel_run.sh"
innovus -overwrite -64 -nowin -init START.tcl -cpus 8 -log logs/run.log
# for dir in $dirs 
#     do 
#         echo $DIR
#         export DIR=$(realpath $dir);
#         echo $DIR
#         innovus -overwrite -64 -nowin -init START.tcl -log logs/run.log &
#     done
#     wait 
# echo "finished parallel_run.sh."

# for ((i=0; i<${total}; i++))
# do
#     export DIR=gen-0-id-${i};
#     innovus -overwrite -64 -nowin -init START.tcl -log logs/run.log &
# done
# wait
# echo "finished parallel_run.sh!!!"
