require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :environment do
  ENV["RACK_ENV"] ||= "development"
  require "./lib/callback"
end

desc "Loads the appropriate libraries and then fires up irb"
task :console => :environment do
  exec "irb -r ./lib/callback.rb"
end

task default: :spec
