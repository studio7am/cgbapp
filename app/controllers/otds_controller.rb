class OtdsController < ApplicationController
 respond_to :html, :js
  
  def index
    @otds = Otd.all
  end

  def show
    @otd = Otd.find(params[:id])
    @otds = Otd.all
    @documents = Document.all
    
  end

  def new
    @otd = Otd.new
  end

  def create
    @otds = Otd.all
    @otd = Otd.create(otd_params)
  end

  def edit
    @otd = Otd.find(params[:id])
  end

  def update
    @otds = Otd.all
    @otd = Otd.find(params[:id])
    
    @otd.update_attributes(otd_params)
  end

  def delete
    @otd = Otd.find(params[:otd_id])
  end

  def destroy
    @otds = Otd.all
    @otd = Otd.find(params[:id])
    @otd.destroy
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def otd_params
      params.require(:otd).permit(:name, :content)
    end
end
