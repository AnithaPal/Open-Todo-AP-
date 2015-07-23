require 'rails_helper'

RSpec.describe Item, :type => :model do
  it "is valid with a item description" do
    item = Item.new(
      description: "clean the kitchen cabinet")
    expect(item).to be_valid
  end  
  it "is invalid without an item name" do
    item = Item.new(description: nil)
    item.valid?
    expect(item.errors[:description]).not_to include("can't be blank")
  end  

  
end
