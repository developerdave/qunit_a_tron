Feature: Generate QUnit Framework
  In order to generate QUnit test framework
  As a developer
  I want the Gem to set-up my project structure

  Scenario: Generate project structure
    When I run `qunit init`
    Then the following directories should exist:
      | test                                |
      | test/fixtures                       |
    Then the following files should exist:
      | test/fixtures/example_fixture.html  |
      | test/test_runner.html               |