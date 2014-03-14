class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to user_path(current_user.id)
    else
      render '_product_form'
    end
  end

  def update 
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to user_path(current_user.id)
    else
      render '_edit'
    end
  end

  def edit 
    @product_id = Product.find(params[:id])
  end

  def show 
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
   
    redirect_to user_path(current_user.id)
  end



  private

    def product_params
      params.require(:product).permit(:name, :description, :category_id, :photo)
    end

end
