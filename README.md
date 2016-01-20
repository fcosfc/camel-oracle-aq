# An Apache ServiceMix feature for Camel routes connected to Oracle Advanced Queuing

Requisites:

    mvn install:install-file -Dfile={Path/to/your/ojdbc6.jar} -DgroupId=com.oracle \
                             -DartifactId=ojdbc6 -Dversion=11.2.0 -Dpackaging=jar 
                           
    mvn install:install-file -Dfile={Path/to/your/aqapi.jar} -DgroupId=com.oracle \
                             -DartifactId=aqapi -Dversion=11.2.0 -Dpackaging=jar
      
Feature installation:                    

    mvn install
  
    Apache ServiceMix 6.0.0 commands:
  
      feature:repo-add mvn:com.wordpress.fcosfc.camel-oracle-aq/feature/1.0.0-SNAPSHOT/xml/features
      feature:install camel-oracle-aq
    
Basic test:

    Oracle sripts for the basic test in folder: basic-test/src/main/resources/sql/
    
    ServiceMix command:
    
      bundle:install -s mvn:com.wordpress.fcosfc.camel-oracle-aq/basic-test/1.0.0-SNAPSHOT
