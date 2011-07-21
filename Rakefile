desc "Start the Jenkins server"
task :server do 
  sh "bundle exec jenkins server > jenkins.log 2>&1 &"
end

desc "Create the Jenkins project"
task :project do 
  sh "bundle exec jenkins create . --host localhost --port 3001"
end

task :spec do
  sh "bundle exec rspec spec"
end
