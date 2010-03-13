$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

require 'rubygems'
require 'anywhere'

Anywhere.configure

use Anywhere::Counter
run Anywhere::Redirector