require 'rake/testtask'

Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.test_files = Dir.glob('test/**/*_test.rb')
  task.verbose = true
end

task :default => :test
