require "thor"
require "qunit/generators/project"

module QUnit
  class CLI < Thor

    desc "initialise qunit", "Initialises your project with the QUnit framework"
    def init
      QUnit::Generators::Project.start()
    end

  end
end