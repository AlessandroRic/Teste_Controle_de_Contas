require 'rails_helper'

RSpec.describe "Conta", type: :request do
  describe "GET /conta" do
    it "works! (now write some real specs)" do
      get conta_path
      expect(response).to have_http_status(200)
    end
  end
end
