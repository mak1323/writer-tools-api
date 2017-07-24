class AdjectivesController < ApplicationController
  before_action :set_adjective, only: [:show, :update, :destroy]

  # GET /adjectives
  def index
    @adjectives = Adjective.all

    render json: @adjectives
  end

  # GET /adjectives/1
  def show
    render json: @adjective
  end

  # POST /adjectives
  def create
    @adjective = Adjective.new(adjective_params)

    if @adjective.save
      render json: @adjective, status: :created, location: @adjective
    else
      render json: @adjective.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adjectives/1
  def update
    if @adjective.update(adjective_params)
      render json: @adjective
    else
      render json: @adjective.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adjectives/1
  def destroy
    @adjective.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adjective
      @adjective = Adjective.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adjective_params
      params.require(:adjective).permit(:word, :attributes)
    end
end
