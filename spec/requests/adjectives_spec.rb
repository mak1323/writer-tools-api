require 'rails_helper'

RSpec.describe "Adjectives", type: :request do
  describe "GET /adjectives" do
    it "works! (now write some real specs)" do
      get adjectives_path
      expect(response).to have_http_status(200)
    end
  end
end
