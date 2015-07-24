require 'rails_helper'

RSpec.describe Item, :type => :model do

  it "is valid with a item description" do
    expect(build(:item)).to be_valid
  end

  it "is invalid without an item name" do
    item = build(:item, description: "")
    item.valid?
    expect(item.errors[:description]).to include("can't be blank")
  end

  
end
