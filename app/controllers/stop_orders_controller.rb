class StopOrdersController < ApplicationController
  before_action :set_stop_order, only: [:show, :edit, :update, :destroy]

  # GET /stop_orders
  # GET /stop_orders.json
  def index
    @stop_orders = StopOrder.all
  end

  # GET /stop_orders/1
  # GET /stop_orders/1.json
  def show
  end

  # GET /stop_orders/new
  def new
    @stop_order = StopOrder.new
  end

  # GET /stop_orders/1/edit
  def edit
  end

  # POST /stop_orders
  # POST /stop_orders.json
  def create
    @stop_order = StopOrder.new(stop_order_params)

    respond_to do |format|
      if @stop_order.save
        format.html { redirect_to @stop_order, notice: 'Stop order was successfully created.' }
        format.json { render :show, status: :created, location: @stop_order }
      else
        format.html { render :new }
        format.json { render json: @stop_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stop_orders/1
  # PATCH/PUT /stop_orders/1.json
  def update
    respond_to do |format|
      if @stop_order.update(stop_order_params)
        format.html { redirect_to @stop_order, notice: 'Stop order was successfully updated.' }
        format.json { render :show, status: :ok, location: @stop_order }
      else
        format.html { render :edit }
        format.json { render json: @stop_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stop_orders/1
  # DELETE /stop_orders/1.json
  def destroy
    @stop_order.destroy
    respond_to do |format|
      format.html { redirect_to stop_orders_url, notice: 'Stop order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop_order
      @stop_order = StopOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stop_order_params
      params.require(:stop_order).permit(:routeID, :stopID, :order)
    end
end
