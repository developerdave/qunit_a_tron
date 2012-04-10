require "thor/group"

module QUnit
  module Generators
    class Project < Thor::Group
      include Thor::Actions

      argument :group, :type => :string

      def create_group
        empty_directory(group)
      end

    end
  end
end