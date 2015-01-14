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
        redirect_to beer_path
      else
        render "new"
      end
    end

    def destroy
      @beer = Beer.find(params[:id])
      @beer.destroy
      redirect_to beer_path
    end

end
