export runtime=`date -u +"%Y%m%d%H%M%S"`
export logfile=/home/cloudera/Batch-2/project/s1/logs/transactions'_'$runtime.log
exec &> ${logfile}

echo "Script Started "

pig -x local -f /home/cloudera/Batch-2/project/s1/pig/flattern_transactions.pig

if [$? -eq 0 ]

then 
	echo "Pig Command Executed Successfully !"
	
	mv /home/cloudera/Batch-2/project/s1/srcfiles/lz/trans* /home/cloudera/Batch-2/project/s1/srcfiles/archive

else
	echo "Pig Command Failed, Please check !"

fi

echo "Script Completed !"


