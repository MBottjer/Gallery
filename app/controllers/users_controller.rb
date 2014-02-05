class UsersController < ApplicationController

  def show
    if signed_in?
      @user = User.find(params[:id])
      @product = Product.new
    else 
      redirect_to '/signin'
    end
  end



end
