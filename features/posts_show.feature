Feature: posts show

  Scenario: when I visit posts show I should see it's attributes
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts/1"
    Then I should see the text "Title: Test"
    Then I should see the text "Testauthor"
    Then I should see the text "Testbody"
    
  Scenario: when I visit a created post, I should see comments input
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts/1"
    Then I should see the text "Comments"
    Then I should see the text "New Comment ..."
    Then I should see the input field "comment[author]"
    Then I should see the input field "comment[title]"
    Then I should see the input field "comment[body]"
    Then I should see the button "Create Comment"

  Scenario: when I created a new post it should not have any comments
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts/1"
    Then I should see the text "No comments"

  Scenario: when I create a comment to an existing post
    Given I created a post with a comment with title "CommTitle", author "CommAuthor" and body "CommBody"
    When I browse "/posts/1"
    Then I should see the text "CommTitle"
    Then I should see the text "CommAuthor"
    Then I should see the text "CommBody"

  Scenario: when delete a post
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts" and click on "Destroy"
    Then I should see the text "Post was successfully destroyed."

