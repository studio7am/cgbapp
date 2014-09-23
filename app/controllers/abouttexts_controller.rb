class AbouttextsController < ApplicationController
 respond_to :html, :js
  
  def index
    @abouttexts = Abouttext.all
  end

  def show
    @abouttext = Abouttext.find(params[:id])
    @abouttexts = Abouttext.all
    
  end

  def new
    @abouttext = Abouttext.new
  end

  def create
    @abouttexts = Abouttext.all
    @abouttext = Abouttext.create(abouttext_params)
  end

  def edit
    @abouttext = Abouttext.find(params[:id])
  end

  def update
    @abouttexts = Abouttext.all
    @abouttext = Abouttext.find(params[:id])
    
    @abouttext.update_attributes(abouttext_params)
  end

  def delete
    @abouttext = Abouttext.find(params[:abouttext_id])
  end

  def destroy
    @abouttexts = Abouttext.all
    @abouttext = Abouttext.find(params[:id])
    @abouttext.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abouttext
      @abouttext = Abouttext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abouttext_params
      params.require(:abouttext).permit(:title, :content)
    end
end
