require 'rails_helper'

RSpec.describe "GivenNames", type: :request do
  describe "GET /given_names" do
    it "works! (now write some real specs)" do
      get given_names_path
      expect(response).to have_http_status(200)
    end
  end
end
