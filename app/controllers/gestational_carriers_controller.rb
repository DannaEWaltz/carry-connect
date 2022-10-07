class GestationalCarriersController < ApplicationController
  before_action :set_gestational_carrier, only: %i[ show update destroy ]

  # GET /gestational_carriers
  def index
    @gestational_carriers = GestationalCarrier.all

    render json: @gestational_carriers
  end

  # GET /gestational_carriers/1
  def show
    render json: @gestational_carrier
  end

  # POST /gestational_carriers
  def create
    @gestational_carrier = GestationalCarrier.new(gestational_carrier_params)

    if @gestational_carrier.save
      render json: @gestational_carrier, status: :created, location: @gestational_carrier
    else
      render json: @gestational_carrier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gestational_carriers/1
  def update
    if @gestational_carrier.update(gestational_carrier_params)
      render json: @gestational_carrier
    else
      render json: @gestational_carrier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gestational_carriers/1
  def destroy
    @gestational_carrier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestational_carrier
      @gestational_carrier = GestationalCarrier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gestational_carrier_params
      params.require(:gestational_carrier).permit(:name, :email, :password_digest)
    end
end
