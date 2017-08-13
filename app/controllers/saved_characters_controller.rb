class SavedCharactersController < ProtectedController
  before_action :set_saved_character, only: [:show, :update, :destroy]

  # GET /saved_characters
  def index
    @saved_characters = SavedCharacter.all

    render json: @saved_characters
  end

  # GET /saved_characters/1
  def show
    render json: @saved_character
  end

  # POST /saved_characters
  def create
    @saved_character = SavedCharacter.new(saved_character_params)

    if @saved_character.save
      render json: @saved_character, status: :created, location: @saved_character
    else
      render json: @saved_character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_characters/1
  def update
    if @saved_character.update(saved_character_params)
      render json: @saved_character
    else
      render json: @saved_character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_characters/1
  def destroy
    @saved_character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_character
      @saved_character = current_user.SavedCharacter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def saved_character_params
      params.require(:saved_character).permit(
        :given_name, :family_name, :background, :comment, :user_id
      )
    end
end
