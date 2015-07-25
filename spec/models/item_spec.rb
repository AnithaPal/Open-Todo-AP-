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

  it "is invalid when priority is greater than 5" do
    item = build(:item, priority: 8)
    item.valid?
    expect(item.errors[:priority]).to include("must be less than or equal to 5")
  end

  it "is invalid when priority is lesser than 1" do
    item = build(:item, priority: 0)
    item.valid?
    expect(item.errors[:priority]).to include("must be greater than or equal to 1")
  end

end