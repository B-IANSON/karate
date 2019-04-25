Feature: Common API tests
 
Background:
* url jsonplaceholder
 
Scenario: Validate that all Users conform to expected User schema
 
Given path 'users'
When method GET
Then status 200
And match response.[*] contains read('user-schema.json')

Scenario: Validate that GET query returns expected User ID's

* def desiredUserId = 5
 
Given path 'todos'
And param userId = desiredUserId
When method GET
Then status 200
And match each response.[*].userId == desiredUserId

Scenario: Validate that User POST request can be made successfully
 
Given path 'users'
And request read('example-user.json')
When method POST
Then status 201
And match response == read('example-user.json')

Scenario: Validate that title and body of a post can be updated via PATCH method

* def updateComment = 'Your comment has been removed by admin'

Given path 'posts/1'
And request { title: '#(updateComment)', body: '#(updateComment)' }
When method PATCH
Then status 200
And match response contains { title: '#(updateComment)', body: '#(updateComment)' }

Scenario: Validate that a post can be updated via PUT method

* def updatedPost = read('updated-post.json')
* def postId = updatedPost.id

Given path 'posts/' + postId
And request updatedPost
When method PUT
Then status 200
And match response == updatedPost

Scenario: Validate that a post can be deleted
 
Given path 'posts/1'
When method DELETE
Then status 200