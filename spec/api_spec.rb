require "qunit/api"
require "support/spec_helper"


describe QUnit::Api do
  
  after(:each) do
    FileUtils.rm_rf 'test'
  end

  it "returns list of files to be tested" do
    qunit "init"

    api = QUnit::Api.new
    files = api.test_files_list()

    files.should include('fixtures/example_test.js')
  end
end
