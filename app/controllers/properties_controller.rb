class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!,except:[:show]

  # GET /propertys
  # GET /propertys.json
  def index
    @properties = Property.all
  end

  # GET /propertys/1
  # GET /propertys/1.json
  def show
  end

  # GET /propertys/new
  def new
    @property = Property.new
    @property.property_images.build
  end

  # GET /propertys/1/edit
  def edit
  end

  # POST /propertys
  # POST /propertys.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propertys/1
  # PATCH/PUT /propertys/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propertys/1
  # DELETE /propertys/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to propertys_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:title, :description, :price, :pincode, :region, :area, :address, :user_id, :property_type_id,amenity_ids: [],flooring_ids:[] ,property_images_attributes: [:id , :photo, :title])
    end
end
