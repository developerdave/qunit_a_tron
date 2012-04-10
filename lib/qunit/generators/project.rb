require "thor/group"

module QUnit
  module Generators
    class Project < Thor::Group
      include Thor::Actions

      argument :group, :type => :string

      def create_group
        empty_directory("test")
        empty_directory("test/fixtures")
      end

      def copy_qunit_files
        template("example_fixture.txt", "test/fixtures/example_fixture.html")
        template("test_runner.txt", "test/test_runner.html")
      end

      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

    end
  end
end