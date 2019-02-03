class HoagiesController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
    def index
      @hoagies = Hoagie.all
    end

	  def show
      @hoagie = Hoagie.find(params[:id])
    end

    def new
		  @hoagie = Hoagie.new
    end

    def edit
      @hoagie = Hoagie.find(params[:id])
    end

    def create
		  @hoagie = Hoagie.new(hoagie_params)
      if @hoagie.save
          redirect_to @hoagie
      else
          render 'new'
      end
    end

    def update
      @hoagie = Hoagie.find(params[:id])
 
      if @hoagie.update(hoagie_params)
          redirect_to @hoagie
      else
          render 'edit'
      end
    end

    def destroy
      @hoagie = Hoagie.find(params[:id])
      @hoagie.destroy
      redirect_to hoagies_path
    end

	private
    def hoagie_params
      params.require(:hoagie).permit(:bread, :ingredients, :size)
    end
end
