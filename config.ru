$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

begin 
  require '.bundle/environment'
rescue LoadError
  puts "Booting from rubygems..."
end

require 'anywhere'

Anywhere.configure

use Anywhere::Counter
run Anywhere::Redirector