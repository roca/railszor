class JournalEntry < ActiveRecord::Base
  attr_accessible :date, :notes, :rating, :user_id
  belongs_to :user
  validates :user_id, :presence => true


  def self.find_by_date(date_string_or_object)
  	if (date_string_or_object.is_a?(Date))
  		super(date_string_or_object)
  	else
  		super(date_string_or_object.to_date)
  	end
  end

  def weekday_name
    date.strftime("%A")
  end

  def to_param
  	date.to_param
  end
end
