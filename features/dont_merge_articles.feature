Feature: Don't Merge Articles 
  As a blog author
  In order to clean up the site
  I want to be able to merge articles on the same topic

  Background:
    Given the blog is set up
	  And the following articles exist
    | title		| id 	| body 		  |
    | Anna 		| 1 	| asdfghjk 	|
    | Liz  		| 2 	| xcvbn 	  |


  Scenario: unable to merge articles
    Given I am on the article page for "Anna"
    Then I should not see "merge"
    And I should see "asdfghjk"
    And I should not see "xcvbn"