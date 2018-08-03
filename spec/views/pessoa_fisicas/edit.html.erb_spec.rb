require 'rails_helper'

RSpec.describe "pessoa_fisicas/edit", type: :view do
  before(:each) do
    @pessoa_fisica = assign(:pessoa_fisica, PessoaFisica.create!(
      :nome => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders the edit pessoa_fisica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_fisica_path(@pessoa_fisica), "post" do

      assert_select "input#pessoa_fisica_nome[name=?]", "pessoa_fisica[nome]"

      assert_select "input#pessoa_fisica_cpf[name=?]", "pessoa_fisica[cpf]"
    end
  end
end
