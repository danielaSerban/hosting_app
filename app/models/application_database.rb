class ApplicationDatabase < ActiveRecord::Base
  belongs_to :database

  validates_presence_of :name

end
