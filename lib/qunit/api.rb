module QUnit
  class Api

    def test_files_list()
      files = []
      Dir.chdir("test") do
        files = Dir["fixtures/*.html"]
      end

      return files
    end

  end
end