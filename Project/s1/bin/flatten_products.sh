export runtime=`date -u +"%Y%m%d%H%M%S"`
export log_file=/home/cloudera/Batch-2/project/s1/logs/products'_'$runtime.log

exec &> ${log_file}

echo "execution started..."

pig -x local -f /home/cloudera/Batch-2/project/s1/pig/flattern_products.pig

if [ $? -eq 0 ]

then
	echo "Pig Command Executed Successfully!"
else 
	echo "Pig Command Execution Failed, Please check !!"
fi

echo "process completed!"

mv /home/cloudera/Batch-2/project/s1/srcfiles/lz/prod*  /home/cloudera/Batch-2/project/s1/srcfiles/archive

echo "file moved to  archive!"



