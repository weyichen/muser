class Todo < ActiveRecord::Base
  belongs_to :tasklist
  attr_accessible :completed, :description, :priority, :title, :tasklist_id
  
  scope :incomplete, -> { where(completed: false).order(:title)}
  scope :high_priority, -> { where('priority = ?', "high")}
  scope :med_priority, -> { where('priority = ?', "medium")}
  scope :low_priority, -> { where('priority = ?', "low")}
end
