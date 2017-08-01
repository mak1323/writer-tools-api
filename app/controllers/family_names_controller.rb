class FamilyNamesController < ApplicationController
  before_action :set_family_name, only: [:show, :update, :destroy]

  # GET /family_names
  def index
    @family_names = FamilyName.all

    render json: @family_names
  end

  # GET /family_names/1
  def show
    render json: @family_name
  end

  # POST /family_names
  def create
    @family_name = FamilyName.new(family_name_params)

    if @family_name.save
      render json: @family_name, status: :created, location: @family_name
    else
      render json: @family_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /family_names/1
  def update
    if @family_name.update(family_name_params)
      render json: @family_name
    else
      render json: @family_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /family_names/1
  def destroy
    @family_name.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_name
      @family_name = FamilyName.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def family_name_params
      params.require(:family_name).permit(:family_name)
    end
end
