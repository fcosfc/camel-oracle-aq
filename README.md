# An Apache ServiceMix feature for Camel routes connected to Oracle Advanced Queuing

Requisites:

    mvn install:install-file -Dfile={Path/to/your/ojdbc6.jar} -DgroupId=com.oracle \
                             -DartifactId=ojdbc6 -Dversion=11.2.0 -Dpackaging=jar 
                           
    mvn install:install-file -Dfile={Path/to/your/aqapi.jar} -DgroupId=com.oracle \
                             -DartifactId=aqapi -Dversion=11.2.0 -Dpackaging=jar

    Oracle sripts for the tests are in folder sql

    Each test has a .cfg file, which can be customized and deployed on the folder etc of Apache ServiceMix                   

    mvn install
      
Feature installation: 
  
    Apache ServiceMix 6.0.0 commands:
  
      feature:repo-add mvn:com.wordpress.fcosfc.camel-oracle-aq/feature/1.0.0-SNAPSHOT/xml/features
      feature:install camel-oracle-aq
    
Basic test:
    
    ServiceMix command:
    
      bundle:install -s mvn:com.wordpress.fcosfc.camel-oracle-aq/basic-test/1.0.0-SNAPSHOT

Performance test:
    
    ServiceMix command:
    
      bundle:install -s mvn:com.wordpress.fcosfc.camel-oracle-aq/performance-test/1.0.0-SNAPSHOT

XA test:
    
    ServiceMix command:
    
      bundle:install -s mvn:com.wordpress.fcosfc.camel-oracle-aq/xa-test/1.0.0-SNAPSHOT