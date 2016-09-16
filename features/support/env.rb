TEST_DATA_DIR = "./features/pages"

require 'watir-webdriver'
require 'test/unit'
require 'spreadsheet'
require 'magic_encoding'
require File.dirname(__FILE__) + '/lib/configuration';

URL = Configuration["url"]
USER = StarAccess["user"]
PASS = StarAccess["pass"]
