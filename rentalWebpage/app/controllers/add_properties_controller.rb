class AddPropertiesController < ApplicationController
  before_action :set_add_property, only: [:show, :edit, :update, :destroy]

  # GET /add_properties
  # GET /add_properties.json
  def index
    @add_properties = AddProperty.all
  end

  # GET /add_properties/1
  # GET /add_properties/1.json
  def show
  end

  # GET /add_properties/new
  def new
    @add_property = AddProperty.new
  end

  # GET /add_properties/1/edit
  def edit
  end

  # POST /add_properties
  # POST /add_properties.json
  def create
    @add_property = AddProperty.new(add_property_params)

    respond_to do |format|
      if @add_property.save
        format.html { redirect_to @add_property, notice: 'Add property was successfully created.' }
        format.json { render :show, status: :created, location: @add_property }
      else
        format.html { render :new }
        format.json { render json: @add_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_properties/1
  # PATCH/PUT /add_properties/1.json
  def update
    respond_to do |format|
      if @add_property.update(add_property_params)
        format.html { redirect_to @add_property, notice: 'Add property was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_property }
      else
        format.html { render :edit }
        format.json { render json: @add_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_properties/1
  # DELETE /add_properties/1.json
  def destroy
    @add_property.destroy
    respond_to do |format|
      format.html { redirect_to add_properties_url, notice: 'Add property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_property
      @add_property = AddProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_property_params
      params.require(:add_property).permit(:address, :apartment, :city, :state, :zipcode, :rooms, :bathrooms)
    end
end
