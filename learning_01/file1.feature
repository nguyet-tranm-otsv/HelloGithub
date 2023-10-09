@REQ_NE-1387
Feature: User logged in and search schedule at Home Page

  Background: 
    Given User navigates to the new ecom
    Given User logged in with username and password
    Given User accesses the "HOME" page
    Given User select "Schedule" tab

  @TEST_NE-3077 @TESTSET_NE-3804 @UseScheduleBox @Homepage @stage
  Scenario: Home Page - 2.1 Verify search by Point to Point type when user logged in
    Given User select "Point to Point" type
    Then User can see the total number of search types as "4"
    Then User can see the "Point to Point" type
    When User can enter the location as "Pusan" in the "Origin" field at Home page
    When User can enter the location as "Singapore" in the "Destination" field at Home page
    When User select date as "nextMonth" at "Home - Point to point" page
    When User select next week as "4 Weeks" at "Home - Point to point" page
    When User click "Search" button of "Point to Point" type at Home page
    Then User has been redirected to the "Search Schedule - Point To Point" page
    Then User can see the system is fetching the schedule of ships
    Then User can see greater than or equal "4" results

  @UseScheduleBox @Homepage @stage
  Scenario: Home Page - 2.2 Verify search by Vessel type when user logged in
    Given User select "Vessel" type
    Then User can see the total number of search types as "4"
    Then User can see the "Vessel" type
    When User can enter the Vessel name as "ONE Amazon" field at Home page
    When User click "Search" button of "Vessel" type at Home page
    Then User has been redirected to the "Search Schedule - Vessel" page
    Then User can see the system is fetching ports based on vessel
    Then User can see the system is fetching data of "18" ports

  @UseScheduleBox @Homepage @stage
  Scenario: Home Page - 2.3 Verify search by Port type when user logged in
    Given User select "Port" type
    Then User can see the total number of search types as "4"
    Then User can see the "Port" type
    When User can enter the Port name as "Yokohama" field at Home page
    When User select date as "nextMonth" at "Home - Port" page
    When User select next week as "4 Weeks" at "Home - Port" page
    When User select mode as "Ocean Vessel Only" at "Home - Port" page
    When User click "Search" button of "Port" type at Home page
    Then User has been redirected to the "Search Schedule - Port" page
    Then User can see the system is fetching vessels based on port
    Then User can see the system is fetching data of "14" vessels

  @UseScheduleBox @Homepage @stage
  Scenario: Home Page - 2.4 Verify search by Long Range type when user logged in
    Given User select "Long Range" type
    Then User can see the total number of search types as "4"
    Then User can see the "Long Range" type
    When User selected "From Continent" as "EUROPE" at Home page
    When User selected "To Continent" as "AFRICA" at Home page
    When User click "Search" button of "Long Range" type at Home page
    Then User has been redirected to the "Search Schedule - Long Range" page
    Then User can see the system is fetching service lane
    Then User can see that from "EUROPE" continent to "AFRICA" continent there are "7" service lanes
    Then User can see total of vessels "gte" to "2" results at Long Range tab



