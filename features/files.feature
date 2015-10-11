Feature: Test for File Prexence
  In order to auto test for file presence
  I want to use aruba
  
  Scenario: Using be_an_existing_file
    Given a file "aruba-test.txt" is written
    Then a file "aruba-test.txt" exists