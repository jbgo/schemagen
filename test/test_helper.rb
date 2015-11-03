$LOAD_PATH.unshift File.expand_path('./test')
APP_PATH = File.expand_path('./test/sample-api/config/application', __FILE__)
require File.expand_path('./test/sample-api/config/boot')
require File.expand_path('./test/sample-api/config/environment')

require 'pp'
require 'schemagen'
require 'minitest/autorun'
