class JournalEntry < ActiveRecord::Base
  attr_accessible :date, :notes, :rating, :user_id
  belongs_to :user
  validates :user_id, :presence => true


  def weekday_name
    date.strftime("%A")
  end
end
