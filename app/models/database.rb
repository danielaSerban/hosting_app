class Database < ActiveRecord::Base
  belongs_to :server

  validates_presence_of :db_type
end
