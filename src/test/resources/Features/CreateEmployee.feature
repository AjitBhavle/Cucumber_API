#Author: Ajit
Feature: POST: CreateEmployee
  Description: POST: The purpose of this feature is to test CreateEmployee API.

  @post
  Scenario Outline: POST: CreateEmployee API with valid details.
    Given I want to set URL as "<URL>" for test case "<TestName>"
    When I set header content type as "<ContentType>"
    When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    Then I try to verify the status code is "<StatusCode>"
    And I try to verify the response value "name" is "Ajit"
    And I try to verify the response value "job" is "SDET"
    #And I try to verify the response value "id" is "55"

    Examples: 
      | TestName 			 	| URL        | ContentType      | RequestBody        					| RequestMethod | StatusCode |
      | Create Employee | /api/users | application/json | testData/CreateEmpData.json | POST          |        201 |

  @postfail
  Scenario Outline: POST: CreateEmployee API with Invalid Status Code.
    Given I want to set URL as "<URL>" for test case "<TestName>"
    When I set header content type as "<ContentType>"
    When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    Then I try to verify the status code is "<StatusCode>"
    And I try to verify the response value "name" is "Ajit"
    And I try to verify the response value "job" is "SDET"
    #And I try to verify the response value "id" is "55"

    Examples: 
      | TestName 			 	| URL        | ContentType      | RequestBody        					| RequestMethod | StatusCode |
      | Create Employee | /api/users | application/json | testData/CreateEmpData.json | POST          |        200 |
