Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Rice" with price 100.00 and stock of 20 exists

Scenario Outline: Buy one product in table
    When I buy <product> with quantity <quantity>
    Then total should be <total>
    Then <product> should be remain <balance>
    Examples:
        | product  | quantity |  total  |   balance |
        | "Bread"  |     1    |   20.50 |         4 |
        | "Jam"    |     2    |  160.00 |         8 |
        | "Rice"   |     5    |  500.00 |        15 |