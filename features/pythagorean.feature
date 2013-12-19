Feature: Pythagorean Calculator
  In order to find the third side of a right triangle
  As someone who is too smart to perform a calculation every time
  I want to be told the missing side of the triangle if I give two sides

  Background
  Given I have started the calculator

  Scenario: Return the hypotenuse (a + b) 
    And I have entered 5 into the calculator first
    And I have entered 12 into the calculator second
    When I request the hypotenuse
    Then I should see 13.0 as the final value

  Scenario: Return the hypotenuse (b + a reverse)
    And I have entered 12 into the calculator first
    And I have entered 5 into the calculator second
    When I request the hypotenuse
    Then I should see 13.0 as the final value

  Scenario: Return a side other than the hypotenuse (a + c)
    And I have entered 5 into the calculator first
    And I have entered 13 into the calculator second
    When I request the third side
    Then I should see 12.0 as the final value

  Scenario: Return a side other than the hypotenuse (a + c reverse)
    And I have entered 13 into the calculator first
    And I have entered 5 into the calculator second
    When I request the third side
    Then I should see 12.0 as the final value

  Scenario: Return a side other than the hypotenuse (b + c)
    And I have entered 12 into the calculator first
    And I have entered 13 into the calculator second
    When I request the third side
    Then I should see 5.0 as the final value

  Scenario: Return a side other than the hypotenuse (b + c reverse)
    And I have entered 13 into the calculator first
    And I have entered 12 into the calculator second
    When I request the third side
    Then I should see 5.0 as the final value

  Scenario Outline: Return the hypotenuse
    And I have entered <first> into the calculator first
    And I have entered <second> into the calculator second
    When I request the hypotenuse
    Then I should see <value> as the final value

    Examples:
      | first | second | value    |
      | 3     | 4      |  5.0     |
      | 8     | 15     |  17.0    |
      | 20    | 21     |  29.0    |
      | 33    | 56     |  65.0    |
      | 36    | 77     |  85.0    |


  Scenario Outline: Return the hypotenuse (non-triple)
    And I have entered <first> into the calculator first
    And I have entered <second> into the calculator second
    When I request the hypotenuse
    Then I should see <value> as the final value

    Examples:
      | first | second |  value               |
      | 2     | 4      |  4.47213595499958    |
      | 9     | 15     |  17.4928556845359    |
      | 19    | 21     |  28.319604517012593  |
      | 32    | 56     |  64.4980619863884    |
      | 31    | 77     |  83.00602387778854   |


  Scenario Outline: Return -1 for error-prone values
    And I have entered <first> into the calculator first
    And I have entered <second> into the calculator second
    When I request the hypotenuse
    Then I should see <value> as the final value

    Examples:
      | first | second | value  |
      | -1300 | 5      |  -1    |
      | 5     | -1300  |  -1    |
      | -1    | -1     |  -1    |


