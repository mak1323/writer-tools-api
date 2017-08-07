class BackgroundsController < ApplicationController
  before_action :set_background, only: [:show, :update, :destroy]

  # GET /backgrounds
  def index
    @backgrounds = Background.all

    render json: @backgrounds
  end

  # GET /backgrounds/1
  def show
    render json: @background
  end

  # POST /backgrounds
  def create
    @background = Background.new(background_params)

    if @background.save
      render json: @background, status: :created, location: @background
    else
      render json: @background.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /backgrounds/1
  def update
    if @background.update(background_params)
      render json: @background
    else
      render json: @background.errors, status: :unprocessable_entity
    end
  end

  # DELETE /backgrounds/1
  def destroy
    @background.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background
      @background = Background.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def background_params
      params.require(:background).permit(:background, :genre_type)
    end
end
