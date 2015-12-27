class FlooringsController < ApplicationController
  before_action :set_flooring, only: [:show, :edit, :update, :destroy]

  # GET /floorings
  # GET /floorings.json
  def index
    @floorings = Flooring.all
  end

  # GET /floorings/1
  # GET /floorings/1.json
  def show
  end

  # GET /floorings/new
  def new
    @flooring = Flooring.new
  end

  # GET /floorings/1/edit
  def edit
  end

  # POST /floorings
  # POST /floorings.json
  def create
    @flooring = Flooring.new(flooring_params)

    respond_to do |format|
      if @flooring.save
        format.html { redirect_to @flooring, notice: 'Flooring was successfully created.' }
        format.json { render :show, status: :created, location: @flooring }
      else
        format.html { render :new }
        format.json { render json: @flooring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floorings/1
  # PATCH/PUT /floorings/1.json
  def update
    respond_to do |format|
      if @flooring.update(flooring_params)
        format.html { redirect_to @flooring, notice: 'Flooring was successfully updated.' }
        format.json { render :show, status: :ok, location: @flooring }
      else
        format.html { render :edit }
        format.json { render json: @flooring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floorings/1
  # DELETE /floorings/1.json
  def destroy
    @flooring.destroy
    respond_to do |format|
      format.html { redirect_to floorings_url, notice: 'Flooring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flooring
      @flooring = Flooring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flooring_params
      params.require(:flooring).permit(:name)
    end
end
