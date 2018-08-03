require 'rails_helper'

RSpec.describe "PessoaJuridicas", type: :request do
  describe "GET /pessoa_juridicas" do
    it "works! (now write some real specs)" do
      get pessoa_juridicas_path
      expect(response).to have_http_status(200)
    end
  end
end
