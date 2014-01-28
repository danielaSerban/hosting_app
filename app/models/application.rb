class Application < ActiveRecord::Base
  belongs_to :server
  belongs_to :application_database
  belongs_to :client
  validates :url, presence: true

end
