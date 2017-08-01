class GivenNamesController < ApplicationController
  before_action :set_given_name, only: [:show, :update, :destroy]

  # GET /given_names
  def index
    @given_names = GivenName.all

    render json: @given_names
  end

  # GET /given_names/1
  def show
    render json: @given_name
  end

  # POST /given_names
  def create
    @given_name = GivenName.new(given_name_params)

    if @given_name.save
      render json: @given_name, status: :created, location: @given_name
    else
      render json: @given_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /given_names/1
  def update
    if @given_name.update(given_name_params)
      render json: @given_name
    else
      render json: @given_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /given_names/1
  def destroy
    @given_name.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given_name
      @given_name = GivenName.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def given_name_params
      params.require(:given_name).permit(:given_name, :classical_gender)
    end
end
