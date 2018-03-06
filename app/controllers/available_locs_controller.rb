class AvailableLocsController < ApplicationController
  before_action :set_available_loc, only: [:show, :edit, :update, :destroy]

  # GET /available_locs
  # GET /available_locs.json
  def index
    @available_locs = AvailableLoc.all
  end

  # GET /available_locs/1
  # GET /available_locs/1.json
  def show
  end

  # GET /available_locs/new
  def new
    @available_loc = AvailableLoc.new
  end

  # GET /available_locs/1/edit
  def edit
  end

  # POST /available_locs
  # POST /available_locs.json
  def create
    @available_loc = AvailableLoc.new(available_loc_params)

    respond_to do |format|
      if @available_loc.save
        format.html { redirect_to @available_loc, notice: 'Available loc was successfully created.' }
        format.json { render :show, status: :created, location: @available_loc }
      else
        format.html { render :new }
        format.json { render json: @available_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_locs/1
  # PATCH/PUT /available_locs/1.json
  def update
    respond_to do |format|
      if @available_loc.update(available_loc_params)
        format.html { redirect_to @available_loc, notice: 'Available loc was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_loc }
      else
        format.html { render :edit }
        format.json { render json: @available_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_locs/1
  # DELETE /available_locs/1.json
  def destroy
    @available_loc.destroy
    respond_to do |format|
      format.html { redirect_to available_locs_url, notice: 'Available loc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_loc
      @available_loc = AvailableLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_loc_params
      params.require(:available_loc).permit(:label)
    end
end
