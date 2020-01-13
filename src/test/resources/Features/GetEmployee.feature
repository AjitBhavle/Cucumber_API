#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#Author: Ajit
Feature: GET: Employee Method 
  Description: GET: purpose of this feature is to fetch the employees.

  @get
  Scenario Outline: GET: Validate GET Employee API by Emp_id
    Given I want to set URL as "<URL>" for test case "<TestName>"
    When I set header content type as "<ContentType>"
    When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    Then I try to verify the status code is "<StatusCode>"

    Examples: 
      | TestName  | URL               | ContentType      | RequestBody | RequestMethod | StatusCode |
      | Demo test | /api/users/2 | application/json |             | GET           |        200 |

  @getfail
  Scenario Outline: GET: Validate GET Employee API by Invalid Status Code
    Given I want to set URL as "<URL>" for test case "<TestName>"
    When I set header content type as "<ContentType>"
    When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    Then I try to verify the status code is "<StatusCode>"

    Examples: 
      | TestName  | URL               | ContentType      | RequestBody | RequestMethod | StatusCode |
      | Demo test | /api/users/2 | application/json |             | GET           |        201 |

