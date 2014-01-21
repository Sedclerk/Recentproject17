class AddCarsController < ApplicationController
  before_action :set_add_car, only: [:show, :edit, :update, :destroy]

  # GET /add_cars
  # GET /add_cars.json
  def index
    @add_cars = AddCar.all
  end

  # GET /add_cars/1
  # GET /add_cars/1.json
  def show
  end

  # GET /add_cars/new
  def new
    @add_car = AddCar.new
  end

  # GET /add_cars/1/edit
  def edit
  end

  # POST /add_cars
  # POST /add_cars.json
  def create
    @add_car = AddCar.new(add_car_params)

    respond_to do |format|
      if @add_car.save
        format.html { redirect_to @add_car, notice: 'Add car was successfully created.' }
        format.json { render action: 'show', status: :created, location: @add_car }
      else
        format.html { render action: 'new' }
        format.json { render json: @add_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_cars/1
  # PATCH/PUT /add_cars/1.json
  def update
    respond_to do |format|
      if @add_car.update(add_car_params)
        format.html { redirect_to @add_car, notice: 'Add car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @add_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_cars/1
  # DELETE /add_cars/1.json
  def destroy
    @add_car.destroy
    respond_to do |format|
      format.html { redirect_to add_cars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_car
      @add_car = AddCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_car_params
      params.require(:add_car).permit(:make, :model, :description)
    end
end
