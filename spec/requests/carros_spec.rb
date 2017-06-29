require 'rails_helper'

RSpec.describe "Carros", type: :request do
  describe "GET /carros" do
    it "works! (now write some real specs)" do
      get carros_path
      expect(response).to have_http_status(200)
    end
  end
end
