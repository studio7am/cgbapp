class SlidesController < ApplicationController
  layout 'backend'

  skip_before_filter :verify_authenticity_token  
  respond_to :html, :js
  
  def index
    @slides = Slide.all
  end

  def show
    @slide = Slide.find(params[:id])
    @slides = Slide.all
    @documents = Document.all
    
  end

  def new
    @slide = Slide.new
  end

  def create
    @slides = Slide.all
    @slide = Slide.create(slide_params)
  end

  def edit
    @slide = Slide.find(params[:id])
  end

  def update
    @slides = Slide.all
    @slide = Slide.find(params[:id])
    
    @slide.update_attributes(slide_params)
  end

  def delete
    @slide = Slide.find(params[:slide_id])
  end

  def destroy
    @slides = Slide.all
    @slide = Slide.find(params[:id])
    @slide.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_params
      params.require(:slide).permit(:name, :slimg)
    end
end
