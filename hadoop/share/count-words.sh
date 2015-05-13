cd $HADOOP_PREFIX

#bin/hdfs dfsadmin -safemode leave

bin/hdfs dfs -mkdir /hdfs

bin/hdfs dfs -mkdir /hdfs/words

bin/hdfs dfs -copyFromLocal /share/data/words/* /hdfs/words/

bin/hdfs fs -rm -r /hdfs-output/words

bin/hadoop jar /usr/local/hadoop-2.6.0/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar -input "/hdfs/words" -output "/hdfs-output/words" -mapper "mono /share/Debug/Mapper.exe" -file "/share/Debug/Mapper.exe"

bin/hdfs dfs -cat /hdfs-output/words/*