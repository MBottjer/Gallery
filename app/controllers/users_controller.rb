class UsersController < ApplicationController

  def show
    if signed_in?
      @user = User.find(params[:id])
      @product = Product.new
      @products = Product.all
      # @product_id = Product.find(params[:id]) if Product.exists?(params[:id])
    else 
      redirect_to '/signin'
    end
  end



end
