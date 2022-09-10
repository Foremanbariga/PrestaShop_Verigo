Feature: Presta Shop authentication

  Background:
    Given User is on "http://prestashop.qatestlab.com.ua/en/"
    And The browser is maximized


  Scenario: User is login with valid data
    Given User click Sign In button
    Then User enter email "Foremanbariga@gmail.com" and password "13081985"


  @smoke1
  Scenario: User is login with invalid password field
    Given User click Sign In button
    Then User enter email "Foremanbariga@gmail.com" and password "222"
    And Check error message "Invalid password."

  @smoke2
  Scenario: User is login with empty email field
    Given User click Sign In button
    Then User enter email "" and password "13081985"
    And  Check error message "An email address required."

  @smoke3
  Scenario: User choose and delete the product in the cart
    Given User click Sign In button
    Then logged in user put the product in the cart
    And User goes to the order page
    And Delete product from cart
    And User press Sign out button

  @smoke4
  Scenario: User buys the product
    Given Open authentication page and log in with valid data
    Then User choose the product "Red Dress"
    And User went to Item page
    And Added product to cart
    And User press Sign out button

  @smoke5
  Scenario: User buys the product
    Given Open authentication page and log in with valid data
    Then User adds the product "Blouse" to the cart
    And User press checkout button
    And User went to Order page
    And User check total price "32,40 ₴"






