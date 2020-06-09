from pyspark import SparkConf, SparkContext

conf = SparkConf().setAppName("Spark Test")

sc = SparkContext(conf=conf)

file = sc.textFile('./test.csv').map(lambda f: f.split(','))

file.foreach(lambda f: print(f))
