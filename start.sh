#启动master
bin/start-master.sh

#添加worker
nohup ./spark-class org.apache.spark.deploy.worker.Worker spark://dev1:7077 &

#进入shell
MASTER=spark://dev1:7077  ./spark-shell

#进入Python Shell：
MASTER=spark://dev1:7077 ./pyspark
