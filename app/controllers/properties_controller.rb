class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_admin!,except:[:show]

  # GET /propertys
  # GET /propertys.json
  def index
    @properties =  ((current_person== current_admin)? Property.all : Property.where(user:current_person)).paginate(:page => params[:page], :per_page => 3)

  end

  # GET /propertys/1
  # GET /propertys/1.json
  def show
    @hash = Gmaps4rails.build_markers(@property) do |property, marker|
      marker.lat set_property.try(:location).try(:latitude)
      marker.lng set_property.try(:location).try(:longitude)
    end
  end


  # GET /propertys/new
  def new
    @property = Property.new
    @property.property_images.build
    @specification = @property.build_specification
    @price = @property.build_charge
  end

  # GET /propertys/1/edit
  def edit
  end

  # POST /propertys
  # POST /propertys.json
  def create
    @property = Property.new(property_params)
    @property.user=current_person
    respond_to do |format|
      @property.add_location_to_property
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
        if(@property.user == current_person || current_person== current_admin)

        if @property.update(property_params)
          format.html { redirect_to @property, notice: 'Property was successfully updated.' }
          format.json { render :show, status: :ok, location: @property }
        else
          format.html { render :edit }
          format.json { render json: @property.errors, status: :unprocessable_entity }
        end

        else
            format.html { redirect_to @property, alert: 'Please update your property only.'  }
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
      params[:property][:specification_attributes] = params[:property][:specification] if params[:property][:specification]
      params[:property][:charge_attributes] = params[:property][:charge] if params[:property][:charge]
      # Note :specification removed
      params.require(:property).permit(:title,:location_name, :description, :price, :pincode, :region, :area, :address, :user_id, :property_type_id,amenity_ids: [],flooring_ids:[] ,property_images_attributes: [:id , :photo, :title,:_destroy], specification_attributes: [:super_builtup, :super_builtup_unit, :builtup, :builtup_unit, :carpet, :carpet_unit, :transaction_type, :possession_status, :construction_age], charge_attributes: [:expected_price, :price_type, :car_parking, :club_membership, :token_amount, :maintenance, :maintenance_type, :others])
    end
end
