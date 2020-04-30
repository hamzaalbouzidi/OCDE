CREATE EXTERNAL DATA SOURCE [ExternalDataSource2] WITH
(  
	TYPE = HADOOP,
	LOCATION = 'hdfs://NameNode_URI[:port]'
)