class BeerpostsController < ApplicationController
  before_action :set_beerpost, only: [:show, :edit, :update, :destroy]

  # GET /beerposts
  # GET /beerposts.json
  def index
    @beerposts = Beerpost.all
  end

  # GET /beerposts/1
  # GET /beerposts/1.json
  def show
  end

  # GET /beerposts/new
  def new
    @beerpost = Beerpost.new
  end

  # GET /beerposts/1/edit
  def edit
  end

  # POST /beerposts
  # POST /beerposts.json
  def create
    @beerpost = Beerpost.new(beerpost_params)

    respond_to do |format|
      if @beerpost.save
        format.html { redirect_to @beerpost, notice: 'Beerpost was successfully created.' }
        format.json { render :show, status: :created, location: @beerpost }
      else
        format.html { render :new }
        format.json { render json: @beerpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beerposts/1
  # PATCH/PUT /beerposts/1.json
  def update
    respond_to do |format|
      if @beerpost.update(beerpost_params)
        format.html { redirect_to @beerpost, notice: 'Beerpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @beerpost }
      else
        format.html { render :edit }
        format.json { render json: @beerpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beerposts/1
  # DELETE /beerposts/1.json
  def destroy
    @beerpost.destroy
    respond_to do |format|
      format.html { redirect_to beerposts_url, notice: 'Beerpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beerpost
      @beerpost = Beerpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beerpost_params
      params.require(:beerpost).permit(:name, :beercolour_id, :brewery_id)
    end
end
