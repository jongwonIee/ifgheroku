class EnproductsController < ApplicationController

  def show
    @product = Product.ensearch(params[:search])
  end
end