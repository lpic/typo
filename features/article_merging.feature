Feature: Merge Articles
  As a blog administrator
  In order to add merge functionality
  I want to be able to merge two similar articles

  Background:
    Given the blog is set up
    
    Given the following articles exist:
    | id | title  | type    | author | body   | created_at | published |
    | 1  | Lorem  | Article | user   | Lorem  | 2013-02-28 | true      |
    | 2  | Ipsum  | Article | admin  | Ipsum  | 2013-03-05 | true      |
  
   Scenario: Cannot merge articles as user
    Given I am logged into the admin panel as user with bbbbbb
    And I follow "All Articles"
    Then I should see "Lorem"
    When I follow "Lorem"
    Then I should not see "Merge"

  Scenario: Successfully merge articles as admin
    Given I am logged into the admin panel as admin with aaaaaaaa
    And I follow "All Articles"
    And I follow "Ipsum"
    And I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should see "Successfully merged"
    When I go to the home page
    Then I should see "Ipsum"
    #And I should not see "Lorem"
