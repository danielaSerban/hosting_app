class Database < ActiveRecord::Base
  belongs_to :server, foreign_key: 'server_id'

  validates_presence_of :db_type
end
