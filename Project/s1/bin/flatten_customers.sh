<<<<<<< HEAD
//Test

export runtime=`date -u +"%Y%m%d%H%M%S"`

export log_file=/home/cloudera/project/s1/logs/customers'_'$runtime.log
=======
export runtime=`date -u +"%Y%m%d%H%M%S"`

export log_file=/home/cloudera/Batch-2/project/s1/logs/customers'_'$runtime.log
>>>>>>> origin/master

exec &> ${log_file}

echo "execution started..."

<<<<<<< HEAD
pig -x local -f /home/cloudera/project/s1/pig/flatten_customers.pig

echo "process completed!"

mv /home/cloudera/project/s1/srcfiles/lz/cust*  /home/cloudera/project/s1/srcfiles/archive
=======
pig -x local -f /home/cloudera/Batch-2/project/s1/pig/flatten_customers.pig

if [ $? -eq 0 ]

then
	echo "Pig Command Executed Successfully!"
else 
	echo "Pig Command Execution Failed, Please check !!"
fi

echo "process completed!"

mv /home/cloudera/Batch-2/project/s1/srcfiles/lz/cust*  /home/cloudera/Batch-2/project/s1/srcfiles/archive
>>>>>>> origin/master

echo "file moved to  archive!"
