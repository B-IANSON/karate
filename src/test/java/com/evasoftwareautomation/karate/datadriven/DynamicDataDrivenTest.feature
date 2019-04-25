Feature: Dynamic Data Driven test

Background:
    * def largeDataSet = read('large-data-set.json')

Scenario Outline: userId: <userId> and title: <title> and body: <body>
    Given url jsonplaceholder
    And path 'posts'
    And request { userId: '<userId>', title '<title>', body: '<body>' }
    When method POST
    Then status 201
    And match response == { id: '#number', userId: '<userId>', title '<title>', body: '<body>' }

    Examples:
    | largeDataSet |