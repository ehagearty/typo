Feature: Merge Articles 
  As a blog administrator
  In order to clean up the site
  I want to be able to merge articles on the same topic

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
    | id | title  | body        |
    | 1  | Anna   | 2345678     |
    | 2  | Liz    | asdfghjk    |

  Scenario: Successfully merge articles
    Given I am on the edit page for "Liz"
    And I fill in "merge_with" with "1"
    And show me the page
    And I press "Merge"
    Then I should be on the admin content page 