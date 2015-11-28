import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf
import org.apache.spark.sql.SQLContext

object Slices {
  def main(args: Array[String]) {
    val conf = new SparkConf().setAppName("Slices")
    val sc = new SparkContext(conf)
    val sqlContext = new SQLContext(sc)
    val df = sqlContext
      .read.format("com.databricks.spark.csv")
      .option("header", "true")
      .option("inferSchema", "true")
      .load("results3.csv")

    // baseline and blind?

    // df
    //   .groupBy( df("dataset"), df("slices"), df("min") )
    //   .avg("recall")
    //   .foreach(println)

    // df
    //   .groupBy( df("dataset"), df("min") )
    //   .avg("recall")
    //   .foreach(println)

    // df.where(df("expr") === "naive")
    //   .groupBy( df("dataset"), df("user-class"), df("normal"), df("concerned"))
    //   .avg("recall")
    //   .foreach(println)

    df.where(df("expr") === "groups")
      .groupBy( df("dataset"), df("user-class"), df("normal"), df("concerned"))
      .avg("recall")
      .foreach(println)
  }
}
