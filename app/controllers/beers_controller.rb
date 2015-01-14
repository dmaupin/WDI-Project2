class BeersController < ApplicationController

	  def index
      @beers = Beer.all
    end

    def new
      @beer = Beer.new
    end

    def create
      @beer = Beer.new(params.require(:beer).permit(:name, :brewery, :style, :price))

      if @beer.save
        redirect_to beers_path
      else
        render "new"
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
      if @beer.update_attributes(params.require(:beer).permit(:name, :brewery, :style, :ABV, :price, :rating, :taste, :appearance))
      redirect_to beers_path
      else
      render "edit"
      end
    end

    def destroy
      @beer = Beer.find(params[:id])
      @beer.destroy
      redirect_to beers_path
    end

end
