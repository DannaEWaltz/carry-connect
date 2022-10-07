class IntendedParentsController < ApplicationController
  before_action :set_intended_parent, only: %i[ show update destroy ]

  # GET /intended_parents
  def index
    @intended_parents = IntendedParent.all

    render json: @intended_parents
  end

  # GET /intended_parents/1
  def show
    render json: @intended_parent
  end

  # POST /intended_parents
  def create
    @intended_parent = IntendedParent.new(intended_parent_params)

    if @intended_parent.save
      render json: @intended_parent, status: :created, location: @intended_parent
    else
      render json: @intended_parent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intended_parents/1
  def update
    if @intended_parent.update(intended_parent_params)
      render json: @intended_parent
    else
      render json: @intended_parent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intended_parents/1
  def destroy
    @intended_parent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intended_parent
      @intended_parent = IntendedParent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intended_parent_params
      params.require(:intended_parent).permit(:name, :email, :password_digest)
    end
end
