require 'test_helper'

class ApplicationDatabaseTest < ActiveSupport::TestCase
  should belong_to (:servers)
end
