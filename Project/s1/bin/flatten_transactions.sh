export runtime=`date -u +"%Y%m%d%H%M%S"`

export log_file=/home/cloudera/project/s1/logs/transactions'_'$runtime.log

exec &> ${log_file}

echo "execution started..."

pig -x local -f /home/cloudera/project/s1/pig/flatten_transactions.pig

echo "process completed!"

mv /home/cloudera/project/s1/srcfiles/lz/tran*  /home/cloudera/project/s1/srcfiles/archive

echo "file moved to  archive!"

