class Harvest < ApplicationRecord

	belongs_to :plants

	validates_presence_of :harvest_type

	validates_presence_of :total_yield

end
