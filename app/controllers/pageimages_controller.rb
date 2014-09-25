class PageimagesController < ApplicationController
  layout 'backend'
  
  before_action :set_pageimage, only: [:show, :edit, :update, :destroy]

  # GET /pageimages
  # GET /pageimages.json
  def index
    @pageimages = Pageimage.all
  end

  # GET /pageimages/1
  # GET /pageimages/1.json
  def show
  end

  # GET /pageimages/new
  def new
    @pageimage = Pageimage.new
  end

  # GET /pageimages/1/edit
  def edit
  end

  # POST /pageimages
  # POST /pageimages.json
  def create
    @pageimage = Pageimage.new(pageimage_params)

    respond_to do |format|
      if @pageimage.save
        format.html { redirect_to @pageimage, notice: 'Изображение успешно загружено' }
        format.json { render :show, status: :created, location: @pageimage }
      else
        format.html { render :new }
        format.json { render json: @pageimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pageimages/1
  # PATCH/PUT /pageimages/1.json
  def update
    respond_to do |format|
      if @pageimage.update(pageimage_params)
        format.html { redirect_to @pageimage, notice: 'Pageimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @pageimage }
      else
        format.html { render :edit }
        format.json { render json: @pageimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pageimages/1
  # DELETE /pageimages/1.json
  def destroy
    @pageimage.destroy
    respond_to do |format|
      format.html { redirect_to pageimages_url, notice: 'Pageimage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pageimage
      @pageimage = Pageimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pageimage_params
      params.require(:pageimage).permit(:name, :pgimg)
    end
end
