require 'rails_helper'

RSpec.describe User, type: :model do

  it "exist" do
    expect {User}.to_not raise_error
  end

  it "has a first name, last name, dob, email, and password" do
    user = User.new(first_name: "Hank", last_name: "Hill", email: "hank@propane.com", password: "password", date_of_birth: 01/01/1990)
    expect(user.first_name).to eq("Hank")
    expect(user.last_name).to eq("Hill")
    expect(user.date_of_birth).to eq(01/01/1990)
    expect(user.email).to eq("hank@propane.com")
    expect(user.password).to eq("password")
  end

  context "validating a user" do
    before(:each) do
      @hank = User.new(first_name: "Hank", last_name: "Hill", email: "hank@propane.com", password: "password", date_of_birth: 01/01/1990)
    end

    it "requires a first name" do
      @hank.first_name = nil
      expect(@hank).to_not be_valid
    end

    it "requires a last name" do
      @hank.last_name = nil
      expect(@hank).to_not be_valid
    end

    it "requires a date of birth" do
      @hank.date_of_birth = nil
      expect(@hank).to_not be_valid
    end

    it "requires an email" do
      @hank.email = nil
      expect(@hank).to_not be_valid
    end
    
    it "requires a password" do
      @hank.password = nil
      expect(@hank).to_not be_valid
    end

    
    
  end
  
  it "has a unique email" do
    @hank = User.create(first_name: "Hank", last_name: "Hill", email: "hank@propane.com", password: "password", date_of_birth: 01/01/1970)
    @bobby = User.create(first_name: "Bobby", last_name: "Hill", email: "hank@propane.com", password: "password", date_of_birth: 01/01/1990)
    expect(@bobby).to_not be_valid
  end

end