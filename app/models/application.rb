class Application < ActiveRecord::Base
  belongs_to :server, foreign_key: 'server_id'
  belongs_to :application_database, foreign_key: 'application_database_id'
  belongs_to :client, foreign_key: 'client_id'
  validates :url, presence: true

end
