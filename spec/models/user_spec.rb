require 'spec_helper'

describe User do
it "can be instantiated" do
    User.new.should be_an_instance_of(User)
  end

  it "can be saved successfully" do
    User.create(email: 'jackjone@gmail.com', password: '1234567').should be_persisted
  end
end
