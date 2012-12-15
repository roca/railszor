require 'spec_helper'

describe JournalEntry do


  before(:each) do
  	user = FactoryGirl.create :user
    @valid_attributes = {
      :notes => "value for notes",
      :rating => 1,
      :user_id => user.id,
      :date => "2010-10-10".to_date
    }
  end

  before(:each) do
    @journal_entry = JournalEntry.create(@valid_attributes)
  end

  it "creates a new instance given valid attributes" do
    @journal_entry.should be_valid
  end

  it "returns the weekday name" do
    @journal_entry.weekday_name.should == "Sunday"
  end

end
