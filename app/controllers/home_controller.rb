class HomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @products}
    # end
  end
end
