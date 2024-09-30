'''
Package is built for configuring and testing the project.

Todos:
    Create Spark instance ***
    Read in configuration data.

    Testing for connections and enfvironemtn stuff.
        (Need to learn test driven development concepts. So were going to work on this)

        
'''
from pyspark.sql import SparkSession


def build_spark(appName="HelloWorld"):
    '''
    Builds a spark instance configured to the S3 bucket set as the data lake.
    '''
    return (SparkSession.builder 
            .appName(appName) 
            .enableHiveSupport()
            .getOrCreate()
        )