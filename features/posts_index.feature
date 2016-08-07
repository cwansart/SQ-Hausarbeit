Feature: Posts index

  Scenario: show posts on frontpage
    Given nothing
    When I browse "/"
    Then I should see the text "Posts"

  Scenario: show info if no posts were created
    Given no posts where created
    When I browse "/posts"
    Then I should see the text "No posts"

  Scenario: show post when I created one
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts"
    Then I should see the text "Test"
    Then I should see the text "Testauthor"
    Then I should see the text "Testbody"

  Scenario: don't show "no posts" info when there are posts
    Given I created a post with the title "Test", author "Testauthor" and body "Testbody"
    When I browse "/posts"
    Then I should not see the text "No posts"