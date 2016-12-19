class EnproductsController < ApplicationController

  def show
    if params[:search].length > 0
      @product = Product.ensearch(params[:search])
    else
      @product = nil
    end
  end
end