class HomeController < ApplicationController
  def index
    @products = Product.all
    @first_product = Product.first
    @second_product = Product.all[1]
  end
end
