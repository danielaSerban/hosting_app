class Server < ActiveRecord::Base
  belongs_to :provider, foreign_key: 'provider_id'

  validates_presence_of (:hostName)
  validates_presence_of (:internalIP)
end
