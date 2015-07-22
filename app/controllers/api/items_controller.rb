class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    item = Item.create

    if item.save
      render json: item.to_json
    else
      render json: {errors: item.errors.full_messages }, status: :unprocessable_entity 
    end  
  end

  private
  def item_params
    params.require(:item).permit(:name, :completed, :list_id)
  end  
  
end    