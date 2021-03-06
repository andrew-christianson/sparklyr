#' Retrieve Available Settings
#'
#' Retrieves available sparklyr settings that can be used in configuration files or \code{spark_config()}.
#'
#' @export
spark_config_settings <- function() {
  settings <- list(
    sparklyr.apply.packages = "Configures default value for packages parameter in spark_apply().",
    sparklyr.apply.rlang = "Experimental feature. Turns on improved serialization for spark_apply().",
    sparklyr.apply.serializer = "Configures the version spark_apply() uses to serialize the closure.",
    sparklyr.apply.schema.infer = "Number of rows collected to infer schema when column types specified in spark_apply().",
    sparklyr.arrow = "Use Apache Arrow to serialize data?",
    sparklyr.backend.interval = "Total seconds sparklyr will check on a backend operation.",
    sparklyr.backend.timeout = "Total seconds before sparklyr will give up waiting for a backend operation to complete.",
    sparklyr.collect.batch = "Total rows to collect when using batch collection, defaults to 100,000.",
    sparklyr.cancellable = "Cancel spark jobs when the R session is interrupted?",
    sparklyr.connect.aftersubmit = "R function to call after spark-submit executes.",
    sparklyr.connect.app.jar = "The path to the sparklyr jar used in spark_connect().",
    sparklyr.connect.cores.local = "Number of cores to use in spark_connect(master = \"local\"), defaults to parallel::detectCores().",
    sparklyr.connect.csv.embedded = "Regular expression to match against versions of Spark that require package extension to support CSVs.",
    sparklyr.connect.csv.scala11 = "Use Scala 2.11 jars when using embedded CSV jars in Spark 1.6.X.",
    sparklyr.connect.enablehivesupport = "Whether to enable Hive integration with Spark (default: true)",
    sparklyr.connect.jars = "Additional JARs to include while submitting application to Spark.",
    sparklyr.connect.master = "The cluster master as spark_connect() master parameter, notice that the 'spark.master' setting is usually preferred.",
    sparklyr.connect.packages = "Spark packages to include when connecting to Spark.",
    sparklyr.connect.ondisconnect = "R function to call after spark_disconnect().",
    sparklyr.connect.sparksubmit = "Command executed instead of spark-submit when connecting.",
    sparklyr.connect.timeout = "Total seconds before giving up connecting to the sparklyr gateway while initializing.",
    sparklyr.dbplyr.edition = "Edition of dbplyr API to use with spark connections.",
    sparklyr.dplyr.period.splits = "Should 'dplyr' split column names into database and table?",
    sparklyr.extensions.catalog = "Catalog PATH where extension JARs are located. Defaults to 'TRUE', 'FALSE' to disable.",
    sparklyr.gateway.address = "The address of the driver machine.",
    sparklyr.gateway.config.retries = "Number of retries to retrieve port and address from config, useful when using functions to query port or address in kubernetes.",
    sparklyr.gateway.interval = "Total of seconds sparkyr will check on a gateway connection.",
    sparklyr.gateway.port = "The port the sparklyr gateway uses in the driver machine, defaults to 8880.",
    sparklyr.gateway.port.query.attempts = "Max number of attempts to query Sparklyr gateway ports.",
    sparklyr.gateway.port.query.retry.interval.seconds = "Number of seconds between two consecutive Sparklyr gateway ports query attempts.",
    sparklyr.gateway.remote = "Should the sparklyr gateway allow remote connections? This is required in yarn cluster, etc.",
    sparklyr.gateway.routing = "Should the sparklyr gateway service route to other sessions? Consider disabling in kubernetes.",
    sparklyr.gateway.service = "Should the sparklyr gateway be run as a service without shutting down when the last connection disconnects?",
    sparklyr.gateway.timeout = "Total seconds before giving up connecting to the sparklyr gateway after initialization.",
    sparklyr.gateway.wait = "Total seconds to wait before retrying to contact the sparklyr gateway.",
    sparklyr.livy.auth = "Authentication method for Livy connections.",
    sparklyr.livy.branch = "GitHub branch to be used to deploy sparklyr JAR to Livy.",
    sparklyr.livy.jar = "URL or path to the sparklyr JAR to be used by Livy.",
    sparklyr.livy.headers = "Additional HTTP headers for Livy connections.",
    sparklyr.livy.proxy = "Optional HTTP proxy setting for Livy connections (any non-default value must be specified via httr::use_proxy()).",
    sparklyr.livy.additional_curl_opts = "Additional CURL options for Livy connections (see httr::httr_options() for a list of valid options).",
    sparklyr.log.invoke = "Should every call to invoke() be printed in the console? Can be set to 'callstack' to log call stack.",
    sparklyr.log.console = "Should driver logs be printed in the console?",
    sparklyr.progress = "Should job progress be reported to RStudio?",
    sparklyr.progress.interval = "Total of seconds to wait before attempting to retrieve job progress in Spark.",
    sparklyr.sanitize.column.names = "Should partially unsupported column names be cleaned up?",
    sparklyr.stream.collect.timeout = "Total seconds before stopping collecting a stream sample in sdf_collect_stream().",
    sparklyr.stream.validate.timeout = "Total seconds before stopping to check if stream has errors while being created.",
    sparklyr.verbose = "Use verbose logging across all sparklyr operations?",
    sparklyr.verbose.na = "Use verbose logging when dealing with NAs?",
    sparklyr.verbose.sanitize = "Use verbose logging while sanitizing columns and other objects?",
    sparklyr.web.spark = "The URL to Spark's web interface.",
    sparklyr.web.yarn = "The URL to YARN's web interface.",
    sparklyr.worker.gateway.address = "The address of the worker machine, most likely localhost.",
    sparklyr.worker.gateway.port = "The port the sparklyr gateway uses in the driver machine.",
    sparklyr.yarn.cluster.accepted.timeout = "Total seconds before giving up waiting for cluster resources in yarn cluster mode.",
    sparklyr.yarn.cluster.hostaddress.timeout = "Total seconds before giving up waiting for the cluster to assign a host address in yarn cluster mode.",
    sparklyr.yarn.cluster.lookup.byname = "Should the current user name be used to filter yarn cluster jobs while searching for submitted one?",
    sparklyr.yarn.cluster.lookup.prefix = "Application name prefix used to filter yarn cluster jobs while searching for submitted one.",
    sparklyr.yarn.cluster.lookup.username = "The user name used to filter yarn cluster jobs while searching for submitted one.",
    sparklyr.yarn.cluster.start.timeout = "Total seconds before giving up waiting for yarn cluster application to get registered."
  )

  data.frame(
    name = names(settings),
    description = unlist(unname(settings))
  )
}
