require "qunit/api"
require "support/spec_helper"


describe QUnit::Api do
  
  before(:each) do
    @api ||= QUnit::Api.new
  end

  after(:each) do
    FileUtils.rm_rf 'test'
  end

  it "returns list of files to be tested" do
    qunit "init"

    files = @api.test_files_list()

    files.should include('fixtures/example_test.js')
  end
end
