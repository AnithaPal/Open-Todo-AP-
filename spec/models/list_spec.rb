require 'rails_helper'

RSpec.describe List, :type => :model do

  it "is valid with a list name" do
    expect(build(:list)).to be_valid
  end

  it "is invalid without a list name" do
    list = build(:list, name: nil) 
    list.valid?
    expect(list.errors[:name]).to include("can't be blank")
  end

  it "is invalid without permission" do
    list = build(:list, permission: nil)
    list.valid?
    expect(list.errors[:permission].to include("can't be blank"))
  end

  it "is invalid with a duplicate list name" do
    create(:list, name: 'house') 
    list = build(:list, name: 'house')
    list.valid?
    expect(list.errors[:name]).to include("has already been taken")
  end



end
