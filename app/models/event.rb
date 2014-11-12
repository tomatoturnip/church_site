class Event < ActiveRecord::Base

  validates :name, presence: true
  validates :title, presence: true

end
