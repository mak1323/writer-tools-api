require 'rails_helper'

RSpec.describe "SavedCharacters", type: :request do
  describe "GET /saved_characters" do
    it "works! (now write some real specs)" do
      get saved_characters_path
      expect(response).to have_http_status(200)
    end
  end
end
