require 'rails_helper'

RSpec.describe "pessoa_juridicas/show", type: :view do
  before(:each) do
    @pessoa_juridica = assign(:pessoa_juridica, PessoaJuridica.create!(
      :nome_fantasia => "Nome Fantasia",
      :razao_social => "Razao Social",
      :cnpj => "Cnpj"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome Fantasia/)
    expect(rendered).to match(/Razao Social/)
    expect(rendered).to match(/Cnpj/)
  end
end
