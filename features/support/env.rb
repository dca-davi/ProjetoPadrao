# pages implementation
TEST_DATA_DIR = './features/pages'.freeze

# TEST usage
require 'watir-webdriver'
require 'test/unit'
require 'spreadsheet'
require 'magic_encoding'

#LAN Connection Info
require 'socket'

# REST API usage
require 'rest-client'
require 'base64'
require 'nokogiri'

require './features/support/Utils'
require './features/support/ALMRest'                   # ALM RESTApi libs
require './features/support/RestCall'                  # ALM RESTApi libs

# config file
require File.dirname(__FILE__) + '/lib/configuration'
# require File.dirname(__FILE__) + '/hooks'

# yaml files with containing variable data
URL = Configuration['url']
USER = StarAccess['user']
PASS = StarAccess['pass']