# jenkins-tool
```

1) Explain what is Maven? How does it work?
Maven is a project management tool. It provides the developer a complete build lifecycle framework. On executing Maven commands, it will look for POM file in Maven; it will run the command on the resources described in the POM.

2) List out what are the aspects does Maven Manages?
Maven handles following activities of a developer

    Build
    Documentation
    Reporting
    Dependencies
    SCMs
    Releases
    Distribution
    Mailing list

3) Mention the three build lifecycle of Maven?

    Clean: Cleans up artifacts that are created by prior builds
    Default (build): Used to create the application
    Site: For the project generates site documentation

4) Explain what is POM?

In Maven, POM (Project Object Model) is the fundamental unit of work. It is an XML file which holds the information about the project and configuration details used to build a project by Maven
5) Explain what is Maven artifact?

Usually an artifact is a JAR file which gets arrayed to a Maven repository. One or more artifacts a maven build produces such as compiled JAR and a sources JAR.
Each artifact includes a group ID, an artifact ID and a version string.

6) Explain what is Maven Repository? What are their types?
A Maven repository is a location where all the project jars, library jars, plugins or any other particular project related artifacts are stored and can be easily used by Maven.
Their types are local, central and remote

7) Why Maven Plugins are used?

Maven plugins are used to

    Create a jar file
    Create war file
    Compile code files
    Unit testing of code
    Documenting projects
    Reporting

8) List out the dependency scope in Maven?

The various dependency scope used in Maven are:

    Compile: It is the default scope, and it indicates what dependency is available in the classpath of the project
    Provided: It indicates that the dependency is provided by JDK or web server or container at runtime
    Runtime: This tells that the dependency is not needed for compilation but is required during execution
    Test: It says dependency is available only for the test compilation and execution phases
    System: It indicates you have to provide the system path
    Import: This indicates that the identified or specified POM should be replaced with the dependencies in that POM’s section


9) Mention how profiles are specified in Maven?

Profiles are specified in Maven by using a subset of the elements existing in the POM itself.
10) Explain how you can exclude dependency?
By using the exclusion element, dependency can be excluded

11) Mention the difference between Apache Ant and Maven?
Apache Ant Maven
    Ant is a toolbox – Maven is a framework
    Ant does not have formal conventions like project directory structure – Maven has conventions
    Ant is procedural; you have to tell to compile, copy and compress – Maven is declarative ( information on what to make & how to build)
    Ant does not have lifecycle; you have to add sequence of tasks manually – Maven has a lifecycle
    Ant scripts are not reusable – Maven plugins are reusable

12) In Maven what are the two setting files called and what are their location?
In Maven, the setting files are called settings.xml, and the two setting files are located at
    Maven installation directory: $M2_Home/conf/settings.xml
    User’s home directory: ${ user.home }/ .m2 / settings.xml

13) List out what are the build phases in Maven?
Build phases in Maven are
    Validate
    Compile
    Test
    Package
    Install
    Deploy

14) List out the build, source and test source directory for POM in Maven?
    Build = Target
    Source = src/main/java
    Test = src/main/test


15) Where do you find the class files when you compile a Maven project?
You will find the class files ${basedir}/target/classes/.

16) Explain what would the “jar: jar” goal do?
jar: jar will not recompile sources; it will imply just create a JAR from the target/classes directory considering that everything else has been done

17) List out what are the Maven’s order of inheritance?
The maven’s order of inheritance is

    Parent Pom
    Project Pom
    Settings
    CLI parameters

18) For POM what are the minimum required elements?
The minimum required elements for POM are project root, modelVersion, groupID, artifactID and version.

19) Explain how you can produce execution debug output or error messages?
To produce execution debug output you could call Maven with X parameter or e parameter.

20) Explain how to run test classes in Maven?
To run test classes in Maven, you need surefire plugin, check and configure your settings in setting.xml and pom.xml for a property named “test.”


```
