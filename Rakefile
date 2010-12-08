require 'rake/testtask'

$LOAD_PATH.unshift 'lib'

task :default => :test

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test' << '.'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc "Open an IRB session preloaded with this library"
task :console do
  sh "irb -r./lib/numero.rb -I./lib"
end
