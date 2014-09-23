class FilialsController < ApplicationController

 respond_to :html, :js
  
  def index
    @filials = Filial.all
  end

  def show
    @filial = Filial.find(params[:id])
    @filials = Filial.all
    
  end

  def new
    @filial = Filial.new
  end

  def create
    @filials = Filial.all
    @filial = Filial.create(filial_params)
  end

  def edit
    @filial = Filial.find(params[:id])
  end

  def update
    @filials = Filial.all
    @filial = Filial.find(params[:id])
    
    @filial.update_attributes(filial_params)
  end

  def delete
    @filial = Filial.find(params[:filial_id])
  end

  def destroy
    @filials = Filial.all
    @filial = Filial.find(params[:id])
    @filial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filial
      @filial = Filial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filial_params
      params.require(:filial).permit(:name, :pn, :vt, :sr, :ch, :pt, :sb, :vs)
    end
end
