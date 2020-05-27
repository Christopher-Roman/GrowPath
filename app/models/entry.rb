class Entry < ApplicationRecord

  belongs_to :plants

  validates_presence_of :entry_type
  validates_presence_of :adhoc_notes
  validates_presence_of :growth_phase
  validates_presence_of :overall_health

end
