class HomeController < ApplicationController
  def index
    @first_product = Product.first
  end
end
