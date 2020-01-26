table_name=$1
column_name=$2
export runtime=`date -u +"%Y%m%d%H%M%S"`
export log_file=/home/cloudera/project/s2/logs/$1'_'$runtime.log
exec &> ${log_file}
export SPARK_HOME=/usr/lib/spark/lib
echo "execution started..."
echo "execution completed..."
sqoop import --connect jdbc:mysql://127.0.0.1:3306/retail --username root --password cloudera --table $table_name --hive-import  --hive-table stg_s2.$table_name --fields-terminated-by '|' --m 1
