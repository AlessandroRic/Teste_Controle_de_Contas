require 'rails_helper'

RSpec.describe "pessoa_fisicas/new", type: :view do
  before(:each) do
    assign(:pessoa_fisica, PessoaFisica.new(
      :nome => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders new pessoa_fisica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_fisicas_path, "post" do

      assert_select "input#pessoa_fisica_nome[name=?]", "pessoa_fisica[nome]"

      assert_select "input#pessoa_fisica_cpf[name=?]", "pessoa_fisica[cpf]"
    end
  end
end
