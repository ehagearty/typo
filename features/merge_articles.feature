Feature: Merge Articles 
  As a blog administrator
  In order to clean up the site
  I want to be able to merge articles on the same topic

  Background:
    Given the blog is set up
	And the following articles exist
    | title		| id 	| body 		|
    | Anna 		| 1 	| asdfghjk 	|
    | Liz  		| 2 	| xcvbn 	|
    And I am logged into the admin panel


  Scenario: Successfully merge articles
    Given I am on the edit page for "Anna"
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on article page for "Anna"
    And I should see "asdfghjk"
    And I should see "xcvbn"
    And I should see "1234567"
    And I should see "34567890"