/**
 * DataSource
 * @author  : Mohammad Abdul Hye
 * @date    : Aug 25 10:40:11 BDT 2014
 */
dataSource {
    pooled = true
    driverClassName = "oracle.jdbc.OracleDriver"
    dialect = org.hibernate.dialect.OracleDialect
   /* username = "lgsp"
    password = "lgsp"
*/
     username = "lgd_lgd"
   password = "lgd_lgd"

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate'
//           url = "jdbc:oracle:thin:@192.168.1.5:1521:db10g"
            //url = "jdbc:oracle:thin:@localhost:1521:orcl"
   url = "jdbc:oracle:thin:@localhost:1521:orcl"
//           url = "jdbc:oracle:thin:@192.168.1.19:1521:db11g"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
//             url = "jdbc:oracle:thin:@192.168.1.5:1521:db10g"
//            url = "jdbc:oracle:thin:@192.168.1.19:1521:db11g"
            url = "jdbc:oracle:thin:@192.168.1.19:1521:db11g"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            //url = "jdbc:oracle:thin:@192.168.1.5:1521:db10g"
//            url = "jdbc:oracle:thin:@192.168.1.19:1521:db11g"
            url = "jdbc:oracle:thin:@192.168.1.19:1521:db11g"
        }
    }
}
