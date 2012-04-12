Feature: Generate QUnit Framework
  In order to generate QUnit test framework
  As a developer
  I want the Gem to set-up my project structure

  Scenario: Generate project structure
    When I run `qunit init`
    Then the following files should exist:
      | test/fixtures/example_test.js       |
      | test/test_runner.html               |
      | test/lib/qunit/qunit.css            |
      | test/lib/qunit/qunit.js             |

  Scenario: Create example test file
    When I run `qunit init`
    Then the file "test/fixtures/example_test.js" should contain:
    """
    module("example");
    test("should test the truth", function() {
      ok(true, "should be true");
    });
    """

  Scenario: Create test_runner.html
    When I run `qunit init`
    Then the file "test/test_runner.html" should contain:
    """
    <!DOCTYPE HTML>
    <html>
      <head>
        <meta content-type="utf-8">

        <title>test runner</title>

        <link rel="stylesheet" type="text/css" href="lib/qunit/qunit.css">
        <script src="lib/qunit/qunit.js"></script>

        <!-- Start of Test Files -->
        <script src'fixtures/example_test.js'></script>
        <!-- End of Test Files -->
      </head>

      <body>
        <h1 id="qunit-header"></h1>
        <h2 id="qunit-banner"></h2>
        <div id="qunit-testrunner-toolbar"></div>
        <h2 id="qunit-userAgent"></h2>
        <ol id="qunit-tests"></ol>
      </body>
    </html>
    """