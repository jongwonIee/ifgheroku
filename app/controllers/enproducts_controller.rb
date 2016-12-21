class EnproductsController < ApplicationController
  before_filter :variables
  def index

    @recommends = ['Whiplash', 'Sing Street', 'Rock Dog', 'Begin Again', 'Florence Foster Jenkins', 'Very Good Girls', 'Criminal', 'Boyhood', 'Women in Gold', 'The Danish Girl', 'Hector and the Search for Happiness', 'Foosball', 'Big Eyes', 'Cafe Society', 'The Dressmaker', 'Before I go to sleep', 'Chef']
  end

  def show
    if params[:search].length > 0
      @product = Product.ensearch(params[:search])
    else
      @product = nil
    end
  end

  def search
    respond_to do |format|
      format.html
      format.json { @titles = Product.ensearch(params[:term]) }
    end
  end

  private

  def variables
    @home = '/en'
    @link='/'
    @language='Korean'
  end
end