class ProductsController < ApplicationController

  def show
    if params[:search].length > 0
      @product = Product.search(params[:search])
    else
      @product = nil
    end
  end

  # for updating, downloading csv

  def index
    @products = Product.order(:percent_error)
    respond_to do |format|
      format.html
      # format.csv { render text: @products.to_csv}
      format.csv { send_data @products.to_csv }
    end
  end

  def import
    Product.import(params[:file])
    redirect_to root_url, notice:'Products imported.'
  end

  def search
    respond_to do |format|
      format.html
      format.json { @titles = Product.search(params[:term]) }
    end
  end
end
