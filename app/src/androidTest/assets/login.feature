Feature: Sign In
  User Signs in into the system

  @login-feature
  Scenario Outline: User can successfully sign in and access the dashboard with valid details
    Given I am on the sign in screen
    When I enter email <email>
    And I enter password <password>
    And I click on the sign in button
    Then I am redirected to the dashboard

    Examples:
      | email           | password |
      | sandisprajapati52@gmail.com | sandis123 |

  @login-feature
  Scenario Outline: User provides an invalid detail or a field empty
    Given I am on the sign in screen
    When I enter email <email>
    And I enter password <password>
    And I click on the sign in button
    Then I receive an error in the <view>

    Examples:
      | email           | password |
      | test@test.com      | test |
