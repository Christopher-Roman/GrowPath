class Plant < ApplicationRecord
	
  belongs_to :user

  has_many :entries

  has_one :harvest

  validates_presence_of :plant_type

  validates_presence_of :grow_medium

end
