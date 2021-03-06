class BusDriversController < ApplicationController
  before_action :set_bus_driver, only: [:show, :edit, :update, :destroy]

  # GET /bus_drivers
  # GET /bus_drivers.json
  def index
    @bus_drivers = BusDriver.all
  end

  # GET /bus_drivers/1
  # GET /bus_drivers/1.json
  def show
  end

  # GET /bus_drivers/new
  def new
    @bus_driver = BusDriver.new
  end

  # GET /bus_drivers/1/edit
  def edit
  end

  # POST /bus_drivers
  # POST /bus_drivers.json
  def create
    @bus_driver = BusDriver.new(bus_driver_params)

    respond_to do |format|
      if @bus_driver.save
        format.html { redirect_to @bus_driver, notice: 'Bus driver was successfully created.' }
        format.json { render :show, status: :created, location: @bus_driver }
      else
        format.html { render :new }
        format.json { render json: @bus_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_drivers/1
  # PATCH/PUT /bus_drivers/1.json
  def update
    respond_to do |format|
      if @bus_driver.update(bus_driver_params)
        format.html { redirect_to @bus_driver, notice: 'Bus driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @bus_driver }
      else
        format.html { render :edit }
        format.json { render json: @bus_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_drivers/1
  # DELETE /bus_drivers/1.json
  def destroy
    @bus_driver.destroy
    respond_to do |format|
      format.html { redirect_to bus_drivers_url, notice: 'Bus driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_driver
      @bus_driver = BusDriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_driver_params
      params.require(:bus_driver).permit(:busID, :driverID, :shift)
    end
end
