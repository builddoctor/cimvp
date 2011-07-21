task :server do 
  sh "bundle exec jenkins server &"
end

task :project do 
  sh "bundle exec jenkins create . --host localhost"
end
