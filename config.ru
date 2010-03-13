$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

begin 
  require '.bundle/environment'
rescue LoadError
  puts "Trying to boot from rubygems..."
  require 'rubygems'
end

require 'anywhere'

Anywhere.configure

use Anywhere::Counter
run Anywhere::Redirector