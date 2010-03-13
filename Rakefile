$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

desc 'Setup a database for anywhere'
task :db => :env do
  Anywhere::Domain.auto_migrate!
  puts "Awesome! The anywhere database has been created!"
end

desc 'Generates a configuration file'
task :config do
  require 'fileutils'
  
  source = File.join(File.dirname(__FILE__), 'lib/anywhere/templates/anywhere.config')
  target = File.join(File.dirname(__FILE__), 'anywhere.config')
  
  FileUtils.cp source, target
  
  puts "Generated a configuration file at '#{target}'."
end

task :env do
  require 'anywhere'
  Anywhere.configure
end