require 'rails_helper'

RSpec.describe List, :type => :model do
  it "is valid with a list name" do
    list = List.new(name: 'house')
    expect(list).to be_valid
  end  
  it "is invalid without a list name" do
    list = List.new(name: nil) 
    list.valid?
    expect(list.errors[:name]).not_to include("can't be blank")
  end  

  it "is invalid with a duplicate list name" do
    List.create(name: 'house') 
    list = List.new(name: 'house')
    list.valid?
    expect(list.errors[:name]).to include("has already been taken")
  end  
end
