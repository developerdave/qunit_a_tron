#!/usr/bin/env rake
require "bundler/gem_tasks"
require "cucumber/rake/task"
require 'rspec/core/rake_task'

task :default => [:features, :spec]


RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new(:features) do |task|
  task.cucumber_opts = %w{--format progress features}
end

