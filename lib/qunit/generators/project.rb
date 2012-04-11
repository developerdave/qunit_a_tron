require "thor/group"

module QUnit
  module Generators
    class Project < Thor::Group
      include Thor::Actions

      argument :group, :type => :string

      def create_group
        create_directories(
          %w(test test/fixtures test/lib test/lib/qunit)
        )
      end

      def copy_qunit_files
        template("example_fixture.txt", "test/fixtures/example_fixture.html")
        template("test_runner.txt", "test/test_runner.html")
        template("lib/qunit/qunit.css", "test/lib/qunit/qunit.css")
        template("lib/qunit/qunit.js", "test/lib/qunit/qunit.js")
      end

      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

      private
        def create_directories(directories)
          directories.each do |directory|
            empty_directory(directory)
          end
        end

    end
  end
end