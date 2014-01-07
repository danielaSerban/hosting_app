class ApplicationDatabase < ActiveRecord::Base
  belongs_to :database, foreign_key: 'database_id'

  validates_presence_of :name

end
