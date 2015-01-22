class BeersController < ApplicationController

  # before_action :authorize

	  def index
      @beers = Beer.all.order(created_at: :desc)
    end

    def new
      @beer = Beer.new
    end

    def create
      @beer = Beer.new(beer_params)

      if @beer.save
        redirect_to beers_path
      else
        render :new
      end
    end

    def show
      @beer = Beer.find(params[:id])
    end

    def edit
      @beer = Beer.find(params[:id])    
    end

    def update
      @beer = Beer.find(params[:id])
      if @beer.update(beer_params)
      redirect_to beers_path
      else
      render :edit
      end
    end

    def destroy
      @beer = Beer.find(params[:id])
      @beer.destroy
      redirect_to beers_path
    end

    def beer_params
      params.require(:beer).permit(:name, :brewery, :style, :ABV, :price, :rating, :taste, :appearance, :photo, :image)
    end

end
