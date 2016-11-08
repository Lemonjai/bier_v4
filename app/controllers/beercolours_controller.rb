class BeercoloursController < ApplicationController
  before_action :set_beercolour, only: [:show, :edit, :update, :destroy]

  # GET /beercolours
  # GET /beercolours.json
  def index
    @beercolours = Beercolour.all
  end

  # GET /beercolours/1
  # GET /beercolours/1.json
  def show
  end

  # GET /beercolours/new
  def new
    @beercolour = Beercolour.new
  end

  # GET /beercolours/1/edit
  def edit
  end

  # POST /beercolours
  # POST /beercolours.json
  def create
    @beercolour = Beercolour.new(beercolour_params)

    respond_to do |format|
      if @beercolour.save
        format.html { redirect_to beercolours_path, notice: 'Colour was successfully created.' }
        format.json { render :show, status: :created, location: @beercolour }
      else
        format.html { render :new }
        format.json { render json: @beercolour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beercolours/1
  # PATCH/PUT /beercolours/1.json
  def update
    respond_to do |format|
      if @beercolour.update(beercolour_params)
        format.html { redirect_to beercolours_path, notice: 'Colour was successfully updated.' }
        format.json { render :show, status: :ok, location: @beercolour }
      else
        format.html { render :edit }
        format.json { render json: @beercolour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beercolours/1
  # DELETE /beercolours/1.json
  def destroy
    @beercolour.destroy
    respond_to do |format|
      format.html { redirect_to beercolours_url, notice: 'Beercolour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beercolour
      @beercolour = Beercolour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beercolour_params
      params.require(:beercolour).permit(:name, :image)
    end
end
