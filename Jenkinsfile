pipeline {
    agent any

    stages {
        stage('Explain what is Maven? How does it work?') {
            steps {
                echo 'Maven is a project management tool.'
                echo 'It provides the developer a complete build lifecycle framework.'
                echo 'On executing Maven commands, it will look for the POM file in Maven,'
                echo 'and it will run the command on the resources described in the POM.'
            }
        }

        stage('List out what aspects does Maven manage?') {
            steps {
                echo 'Maven handles the following activities of a developer:'
                echo '- Build'
                echo '- Documentation'
                echo '- Reporting'
                echo '- Dependencies'
                echo '- SCMs'
                echo '- Releases'
                echo '- Distribution'
                echo '- Mailing list'
            }
        }

        stage('Mention the three build lifecycles of Maven?') {
            steps {
                echo 'The three build lifecycles of Maven are:'
                echo '- Clean: Cleans up artifacts that are created by prior builds'
                echo '- Default (build): Used to create the application'
                echo '- Site: For the project generates site documentation'
            }
        }

        stage('Explain what is POM?') {
            steps {
                echo 'In Maven, POM (Project Object Model) is the fundamental unit of work.'
                echo 'It is an XML file which holds the information about the project and configuration details used to build a project by Maven.'
            }
        }

        stage('Explain what is a Maven artifact?') {
            steps {
                echo 'Usually, an artifact is a JAR file which gets deployed to a Maven repository.'
                echo 'One or more artifacts a Maven build produces such as compiled JAR and a sources JAR.'
                echo 'Each artifact includes a group ID, an artifact ID, and a version string.'
            }
        }

        stage('Explain what is a Maven Repository? What are their types?') {
            steps {
                echo 'A Maven repository is a location where all the project jars, library jars, plugins, or any other particular project related artifacts are stored and can be easily used by Maven.'
                echo 'Their types are local, central, and remote.'
            }
        }

        stage('Why are Maven Plugins used?') {
            steps {
                echo 'Maven plugins are used to:'
                echo '- Create a JAR file'
                echo '- Create a WAR file'
                echo '- Compile code files'
                echo '- Perform unit testing of code'
                echo '- Document projects'
                echo '- Generate reports'
            }
        }

        stage('List out the dependency scopes in Maven?') {
            steps {
                echo 'The various dependency scopes used in Maven are:'
                echo '- Compile: It is the default scope and indicates that the dependency is available in the classpath of the project'
                echo '- Provided: It indicates that the dependency is provided by JDK or web server or container at runtime'
                echo '- Runtime: This scope tells that the dependency is not needed for compilation but is required during execution'
                echo '- Test: It indicates that the dependency is available only for the test compilation and execution phases'
                echo '- System: It indicates that you have to provide the system path'
                echo '- Import: This scope indicates that the identified or specified POM should be replaced with the dependencies in that POM’s section'
            }
        }

        stage('Mention how profiles are specified in Maven?') {
            steps {
                echo 'Profiles are specified in Maven by using a subset of the elements existing in the POM itself.'
            }
        }

        stage('Explain how you can exclude a dependency?') {
            steps {
                echo 'By using the exclusion element, a dependency can be excluded.'
            }
        }

        stage('Mention the difference between Apache Ant and Maven?') {
            steps {
                echo 'Apache Ant: A toolbox'
                echo 'Maven: A framework'
                echo 'Ant does not have formal conventions like project directory structure'
                echo 'Maven has conventions'
                echo 'Ant is procedural; you have to tell to compile, copy, and compress'
                echo 'Maven is declarative (information on what to make & how to build)'
                echo 'Ant does not have a lifecycle; you have to add a sequence of tasks manually'
                echo 'Maven has a lifecycle'
                echo 'Ant scripts are not reusable'
                echo 'Maven plugins are reusable'
            }
        }

        stage('In Maven, what are the two setting files called, and what are their locations?') {
            steps {
                echo 'In Maven, the setting files are called settings.xml, and the two setting files are located at:'
                echo '- Maven installation directory: $M2_Home/conf/settings.xml'
                echo '- User’s home directory: ${user.home}/.m2/settings.xml'
            }
        }

        stage('List out what are the build phases in Maven?') {
            steps {
                echo 'Build phases in Maven are:'
                echo '- Validate'
                echo '- Compile'
                echo '- Test'
                echo '- Package'
                echo '- Install'
                echo '- Deploy'
            }
        }

        stage('List out the build, source, and test source directory for POM in Maven?') {
            steps {
                echo 'Build: Target'
                echo 'Source: src/main/java'
                echo 'Test: src/main/test'
            }
        }

        stage('Where do you find the class files when you compile a Maven project?') {
            steps {
                echo 'You will find the class files in ${basedir}/target/classes/.'
            }
        }

        stage('Explain what the "jar: jar" goal does?') {
            steps {
                echo 'jar: jar will not recompile sources; it will just create a JAR from the target/classes directory, considering that everything else has been done.'
            }
        }

        stage('List out the Maven’s order of inheritance?') {
            steps {
                echo 'The Maven’s order of inheritance is:'
                echo '- Parent Pom'
                echo '- Project Pom'
                echo '- Settings'
                echo '- CLI parameters'
            }
        }

        stage('For POM, what are the minimum required elements?') {
            steps {
                echo 'The minimum required elements for POM are:'
                echo '- Project root'
                echo '- ModelVersion'
                echo '- GroupID'
                echo '- ArtifactID'
                echo '- Version'
            }
        }

        stage('Explain how you can produce execution debug output or error messages?') {
            steps {
                echo 'To produce execution debug output, you could call Maven with the X parameter or e parameter.'
            }
        }

        stage('Explain how to run test classes in Maven?') {
            steps {
                echo '1. To run test classes in Maven, you need the surefire plugin. Check and configure your settings in settings.xml and pom.xml for a property named "test."'
            }
        }
    }
}

