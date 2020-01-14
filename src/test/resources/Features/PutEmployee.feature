#Author: Ajit
Feature: PUT: PutEmployee
  Description: PUT: The purpose of this feature is to test Put Employee Method.

  @put
  Scenario Outline: PUT: Validate PUT Employee method by Passing valid Data.
    Given I want to set URL as "<URL>" for test case "<TestName>"
    When I set header content type as "<ContentType>"
    When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    Then I try to verify the status code is "<StatusCode>"
    And I try to verify the response value "name" is "morpheus"
    And I try to verify the response value "job" is "zion resident"

    Examples: 
      | TestName  | URL          | ContentType      | RequestBody         		 | RequestMethod | StatusCode |
      | Demo test | /api/users/2 | application/json | testdata/PutEmpData.json | PUT          |        200 |
#
  #@putfail
  #Scenario Outline: PUT: Validate PUT Employee method by Passing valid Data.
    #Given I want to set URL as "<URL>" for test case "<TestName>"
    #When I set header content type as "<ContentType>"
    #When I hit the API with requestbody "<RequestBody>" and request method is "<RequestMethod>"
    #Then I try to verify the status code is "<StatusCode>"
    #And I try to verify the response value "name" is "morpheus"
    #And I try to verify the response value "job" is "zion resident"
#
    #Examples: 
      #| TestName  | URL          | ContentType      | RequestBody         		 | RequestMethod | StatusCode |
      #| Demo test | /api/users/2 | application/json | testdata/PutEmpData.json | PUT           |        201 |
