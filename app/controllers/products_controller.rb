class ProductsController < ApplicationController
  
  def about
  end

  def show
    if params[:search].length > 0
      @product = Product.search(params[:search])
    else
      @product = nil
    end
  end

  # for updating, downloading csv

  def index
    @recommends = ['위플래쉬','싱 스트리트','드림 쏭','비긴 어게인','플로렌스','베리 굿 걸','크리미널','보이후드','우먼 인 골드','대니쉬 걸','꾸뻬씨의 행복여행','장남감이 살아있다','
빅 아이즈','
카페 소사이어티','
드레스메이커','
내가 잠들기 전에','
아메리칸 셰프']
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
