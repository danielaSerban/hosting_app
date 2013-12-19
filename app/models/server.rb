class Server < ActiveRecord::Base
  belongs_to :provider

  validates_presence_of (:hostName)
  validates_presence_of (:internalIP)
end
