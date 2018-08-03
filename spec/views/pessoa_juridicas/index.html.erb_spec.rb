require 'rails_helper'

RSpec.describe "pessoa_juridicas/index", type: :view do
  before(:each) do
    assign(:pessoa_juridicas, [
      PessoaJuridica.create!(
        :nome_fantasia => "Nome Fantasia",
        :razao_social => "Razao Social",
        :cnpj => "Cnpj"
      ),
      PessoaJuridica.create!(
        :nome_fantasia => "Nome Fantasia",
        :razao_social => "Razao Social",
        :cnpj => "Cnpj"
      )
    ])
  end

  it "renders a list of pessoa_juridicas" do
    render
    assert_select "tr>td", :text => "Nome Fantasia".to_s, :count => 2
    assert_select "tr>td", :text => "Razao Social".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
  end
end
