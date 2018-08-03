require 'rails_helper'

RSpec.describe "Transferencia", type: :request do
  describe "GET /transferencia" do
    it "works! (now write some real specs)" do
      get transferencia_path
      expect(response).to have_http_status(200)
    end
  end
end
