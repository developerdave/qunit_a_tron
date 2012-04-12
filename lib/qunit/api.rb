module QUnit
  class Api

    def test_files_list()
      files = []
      Dir.chdir("test") do
        files = Dir["fixtures/*.js"]
      end

      return files
    end

    def test_script_tags
      test_files_list.map do |file|
        "<script src'#{file}'></script>" 
      end.join("/n") 
    end

  end
end