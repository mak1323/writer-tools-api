require 'rails_helper'

RSpec.describe "FamilyNames", type: :request do
  describe "GET /family_names" do
    it "works! (now write some real specs)" do
      get family_names_path
      expect(response).to have_http_status(200)
    end
  end
end
