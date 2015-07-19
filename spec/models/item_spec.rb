require 'rails_helper'

RSpec.describe Item, :type => :model do
  it "is valid with a item name" do
    item = Item.new(
      name: "clean the kitchen cabinet")
    expect(item).to be_valid
  end  
  it "is invalid without an item name" do
    item = Item.new(name: nil)
    item.valid?
    expect(item.errors[:name]).not_to include("can't be blank")
  end  

  it "is invalid with a duplicate item name" do
    Item.create(name: 'organize books')
    item = Item.new(name: 'organize books')
    item.valid?
    expect(item.errors[:name]).not_to include("has been already taken")
  end  


end
