#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'cucumber'
require 'cucumber/rake/task'

task :default => 'features'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format progress" # Any valid command line option can go here.
end
