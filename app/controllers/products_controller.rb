class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to user_path(current_user.id)
    else
      flash[:notice] = 'Sorry, there were the following errors: @offer.errors.full_messages'
      render '/users/#{current_user.id}'
    end
  end



  private

    def product_params
      params.require(:product).permit(:name, :description, :category_id, :photo)
    end

end
