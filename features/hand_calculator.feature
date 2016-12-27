Feature: Doing Addition, Substraction, Multiplication, and Division with a Hand Calculator
  Scenario Outline: When Adding Two Numbers together
    When I add "<first_argument>" and "<second_argument>"
    Then I should have calculated "<expected_value>"

    Examples:
      | first_argument | second_argument | expected_value |
      | 1              | 1               | 2              |
      | 12.34          | 37.67           | 50.01          |
      | -5             | 5               | 0              |

  Scenario Outline: When Subtracting Two Numbers
    When I subtract "<first_argument>" and "<second_argument>"
    Then I should have calculated "<expected_value>"

    Examples:
      | first_argument | second_argument | expected_value |
      | 1              | 1               | 0              |
      | 12.34          | 37.67           | -25.33         |
      | -5             | 5               | -10            |
  
  Scenario Outline: When Multiplying Two Numbers
    When I multiply "<first_argument>" and "<second_argument>"
    Then I should have calculated "<expected_value>"

    Examples:
      | first_argument | second_argument | expected_value |
      | 1              | 1               | 1              |
      | 12.34          | 37.67           | 464.8478       |
      | -5             | 5               | -25            |
  
  Scenario Outline: When Dividing Two Numbers
    When I divide "<first_argument>" and "<second_argument>"
    Then I should have calculated "<expected_value>"

    Examples:
      | first_argument | second_argument | expected_value |
      | 1              | 1               | 1              |
      | 12.34          | 37.67           | 0.3275816299   |
      | -5             | 5               | -1             |
      | 144            | 12              | 12             |