Feature: Create or Edit Categories
  As a blog administrator
  In order to organize categories
  I want to be able to create and edit categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel as admin with aaaaaaaa
    
  Scenario: Successfully create category
    Given I am on the admin categories page
    When I fill in "category_name" with "Foo"
    And I fill in "category_permalink" with "foo"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Category was successfully saved."
    And I should see "Foo"
