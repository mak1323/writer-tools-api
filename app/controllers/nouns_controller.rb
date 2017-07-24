class NounsController < ApplicationController
  before_action :set_noun, only: [:show, :update, :destroy]

  # GET /nouns
  def index
    @nouns = Noun.all

    render json: @nouns
  end

  # GET /nouns/1
  def show
    render json: @noun
  end

  # POST /nouns
  def create
    @noun = Noun.new(noun_params)

    if @noun.save
      render json: @noun, status: :created, location: @noun
    else
      render json: @noun.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nouns/1
  def update
    if @noun.update(noun_params)
      render json: @noun
    else
      render json: @noun.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nouns/1
  def destroy
    @noun.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noun
      @noun = Noun.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def noun_params
      params.require(:noun).permit(:word, :theme)
    end
end
