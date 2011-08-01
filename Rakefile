require 'rubygems'
require 'ci/reporter/rake/rspec'

jenkins_dir="#{ENV['HOME']}/.jenkins/server"

desc "Start the Jenkins server"
task :server => :plugins do 
  sh "bundle exec jenkins server > jenkins.log 2>&1 &"
end

desc "Create the Jenkins project"
task :project do 
  sh "bundle exec jenkins create . --host localhost --port 3001"
end

desc "Run the tests"
task :spec => "ci:setup:rspec" do
  sh "bundle exec rspec spec"
end

desc "Stop the server"
task :stop do 
  sh "bundle exec jenkins server -k"
end

desc "Destroy the working dir"
task :destroy => :stop do 
  rm_rf jenkins_dir
end

task :plugins do 
  plugin_dir="#{jenkins_dir}/plugins"
  mkdir_p plugin_dir
  sh "cp plugins/* #{plugin_dir}"
end

task :default => :spec
