class Client < ActiveRecord::Base

  validates_presence_of :name
  has_many :applications

end
