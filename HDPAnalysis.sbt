name := "HDP-Analysis"

version := "1.0"

scalaVersion := "2.11.7"

libraryDependencies += "org.apache.spark" %% "spark-core" % "1.4.1" % "provided"
libraryDependencies += "org.apache.mahout" % "mahout-math" % "0.9"
libraryDependencies += "colt" % "colt" % "1.2.0"
libraryDependencies += "org.scalaz" %% "scalaz-core" % "7.1.3"
libraryDependencies += "com.databricks" %% "spark-csv" % "1.3.0"
libraryDependencies += "org.apache.spark" %% "spark-sql" % "1.5.2"
