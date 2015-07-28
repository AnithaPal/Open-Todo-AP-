require 'rails_helper'

RSpec.describe Api::ItemsController, :type => :controller do

  before do 
    @user = create(:user)
  end

  describe "GET #index" do
    xit "returns only items associated with the current list." do
      list = create(:list)
      item = create(:item, list: list)

      get :index, list_id: list.id, username: @user.username, password: @user.password

      expect(response.message).to eq(1)
    end
  end

end