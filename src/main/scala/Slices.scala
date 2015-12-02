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
      .load("results.csv")

    // df.where(df("expr") === "baseline")
    //   .select( df("dataset"), df("recall") )
    //   .write.format("com.databricks.spark.csv")
    //   .option("header", "false")
    //   .save("baseline")

    // df.where(df("expr") === "blind")
    //   .select( df("dataset"), df("recall") )
    //   .write.format("com.databricks.spark.csv")
    //   .option("header", "false")
    //   .save("blind")

    df.where(df("expr") === "slices")
      .select( df("dataset"), df("slices"), df("min"), df("recall") )
      .write.format("com.databricks.spark.csv")
      .option("header", "false")
      .save("slices")

    // df.where(df("expr") === "naive")
    //   .select( df("dataset"), df("user-class"), df("normal"), df("concerned"), df("recall") )
    //   .write.format("com.databricks.spark.csv")
    //   .option("header", "false")
    //   .save("naive")

    // df.where(df("expr") === "groups")
    //   .select( df("dataset"), df("user-class"), df("normal"), df("concerned"), df("recall") )
    //   .write.format("com.databricks.spark.csv")
    //   .option("header", "false")
    //   .save("groups")
  }

  // use MeanCI ``boost'' ^^ (look up mma doc: 95% confidence, student t test if variance unknown)
  // use MeanDifferenceCI for comparing groups to naive
}
