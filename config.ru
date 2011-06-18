dir = ::File.dirname(__FILE__)

require 'faye'
require File.expand_path(dir + '/app')

use Faye::RackAdapter, :mount => '/faye', :timeout => 20

run Sinatra::Application
