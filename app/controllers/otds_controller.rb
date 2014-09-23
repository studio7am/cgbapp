class OtdsController < ApplicationController
  before_action :set_otd, only: [:show, :edit, :update, :destroy]

  # GET /otds
  # GET /otds.json
  def index
    @otds = Otd.all
  end

  # GET /otds/1
  # GET /otds/1.json
  def show
  end

  # GET /otds/new
  def new
    @otd = Otd.new
  end

  # GET /otds/1/edit
  def edit
  end

  # POST /otds
  # POST /otds.json
  def create
    @otd = Otd.new(otd_params)

    respond_to do |format|
      if @otd.save
        format.html { redirect_to @otd, notice: 'Otd was successfully created.' }
        format.json { render :show, status: :created, location: @otd }
      else
        format.html { render :new }
        format.json { render json: @otd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otds/1
  # PATCH/PUT /otds/1.json
  def update
    respond_to do |format|
      if @otd.update(otd_params)
        format.html { redirect_to @otd, notice: 'Otd was successfully updated.' }
        format.json { render :show, status: :ok, location: @otd }
      else
        format.html { render :edit }
        format.json { render json: @otd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otds/1
  # DELETE /otds/1.json
  def destroy
    @otd.destroy
    respond_to do |format|
      format.html { redirect_to otds_url, notice: 'Otd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otd
      @otd = Otd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otd_params
      params.require(:otd).permit(:name, :content)
    end
end
