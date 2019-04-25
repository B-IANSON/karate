Feature: GraphlQL test

Background:
* url spotifygql
 
Scenario: Validate that query for "Prince" returns expected artist name, album id and track name
  
  Given def query = read('prince-query.gql')
  And request { query: '#(query)' }
  When method POST
  Then status 200
  * match each $.data.queryArtists contains { name: '#regex ^.*Prince.*$'}
  * def albums = get response..albums[*]
  * match each albums contains { id: '#regex ^[a-zA-Z0-9]{22}$', name: '#string'}