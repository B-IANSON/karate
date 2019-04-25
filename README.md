
# Karate-Example

### Purpose
This example project was developed by Ben I'Anson @ E.V.A Professional Services Ltd to demonstrate how to utilise [Karate](https://github.com/intuit/karate) to assert that responses from web end-points are as expected.

### Key Features
* __Parallel Execution:__ Tests are run in [parallel](https://github.com/intuit/karate#parallel-execution) which greatly reduces the execution time when compared to a single threaded approach.


* __Dynamic Data Driven Testing:__ Data is [dynamically resolved](https://github.com/intuit/karate#data-driven-tests) at run time allowing for true data driven testing.


* __Various Common REST API Examples:__ Examples of common GET, POST, PATCH, PUT and DELETE tests which employ Karate's easy-to-use assertion methods such as [Fuzzy Matching](https://github.com/intuit/karate#fuzzy-matching).


* __GraphQL Example:__ Feature utilising the [GraphQL](https://graphql.org/) framework included.


* __SOAP Example:__ Feature utilising Karate's [SOAP]( https://github.com/intuit/karate#SOAP) support included.


* __Mavenised Execution:__ Framework is invoked via [Maven](https://maven.apache.org/) which allows externalised test configuration via system properties parameters.



### Prerequisites
In order to utilise this project you need to have the following installed locally:


* Maven
* Java 8


### Execution

To execute all features in parallel, navigate to `karate` directory and run:

`mvn clean test`

To execute individual features, execute the below command, swapping out the value for the `-Dtest` property for your desired feature runner:

`mvn clean test -Dtest=CommonRunner`

Results of test runs can be located at `target/surefire-reports`





