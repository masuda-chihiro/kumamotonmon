class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :explanation)
  end

end