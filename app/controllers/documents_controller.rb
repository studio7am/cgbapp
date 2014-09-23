class DocumentsController < ApplicationController
  layout 'backend'
 respond_to :html, :js
 skip_before_filter :verify_authenticity_token, :only => [:index, :show, :create]

  
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @documents = Document.all
    @document = Document.create(document_params)
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @documents = Document.all
    @document = Document.find(params[:id])
    
    @document.update_attributes(document_params)
  end

  def delete
    @document = Document.find(params[:document_id])
  end

  def destroy
    @documents = Document.all
    @document = Document.find(params[:id])
    @document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:name, :description, :download_link)
    end
end
