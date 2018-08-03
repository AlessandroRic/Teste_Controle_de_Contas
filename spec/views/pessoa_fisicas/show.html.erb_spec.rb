require 'rails_helper'

RSpec.describe "pessoa_fisicas/show", type: :view do
  before(:each) do
    @pessoa_fisica = assign(:pessoa_fisica, PessoaFisica.create!(
      :nome => "Nome",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
  end
end
