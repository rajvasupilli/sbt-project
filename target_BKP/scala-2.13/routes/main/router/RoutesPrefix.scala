// @GENERATOR:play-routes-compiler
// @SOURCE:/root/sbt-project/conf/routes
// @DATE:Sat Aug 01 19:04:21 UTC 2020


package router {
  object RoutesPrefix {
    private var _prefix: String = "/"
    def setPrefix(p: String): Unit = {
      _prefix = p
    }
    def prefix: String = _prefix
    val byNamePrefix: Function0[String] = { () => prefix }
  }
}
