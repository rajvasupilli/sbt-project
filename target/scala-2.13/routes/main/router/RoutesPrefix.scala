// @GENERATOR:play-routes-compiler
// @SOURCE:/tmp/gha-fargate-poc/conf/routes
// @DATE:Fri Jul 31 11:43:53 UTC 2020


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
