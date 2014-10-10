class PeopleController < ApplicationController
 layout 'backend'
 skip_before_filter :verify_authenticity_token
 respond_to :html, :js
  
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @people = Person.all
    @person = Person.create(person_params)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    
    @person.update_attributes(person_params)
  end

  def delete
    @person = Person.find(params[:person_id])
  end

  def destroy
    @people = Person.all
    @person = Person.find(params[:id])
    @person.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :content, :avatar)
    end
end
