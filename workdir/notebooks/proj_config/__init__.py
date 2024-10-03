'''
Package is built for configuring and testing the project.

Todos:
    Create Spark instance ***
    Read in configuration data.

    Testing for connections and enfvironemtn stuff.
        (Need to learn test driven development concepts. So were going to work on this)

        
'''
from pyspark.sql import SparkSession
from delta import *

def build_spark(appName="HelloWorld"):
    '''
    Builds a spark instance configured to the S3 bucket set as the data lake.
    '''
    
    # spark =  configure_spark_with_delta_pip(
    spark = (
                SparkSession.builder 
                    .appName(appName) 
                    .master("spark://spark-master:7077") 
                    .enableHiveSupport()
                    # .config("spark.jars.packages", "io.delta:delta-core_2.12:2.1.0.jar")
                    # .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension")
                    # .config("spark.sql.catalog.spark_catalog", "org.apache.spark.sql.delta.catalog.DeltaCatalog")
        ).getOrCreate()

    # spark = SparkSession.builder \
    # .appName("DeltaExample") \
    # .master("spark://spark-master:7077") \
    # .config("spark.jars.packages", "io.delta:delta-core_2.12:2.2.0") \
    # .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension") \
    # .config("spark.sql.catalog.spark_catalog", "org.apache.spark.sql.delta.catalog.DeltaCatalog") \
    # .getOrCreate()



    return spark