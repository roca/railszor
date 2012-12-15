class JournalEntry < ActiveRecord::Base
  attr_accessible :date, :notes, :rating, :user_id
  belongs_to :user


  def weekday_name
    date.strftime("%A")
  end
end
