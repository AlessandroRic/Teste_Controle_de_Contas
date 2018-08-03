require 'rails_helper'

RSpec.describe "pessoa_juridicas/new", type: :view do
  before(:each) do
    assign(:pessoa_juridica, PessoaJuridica.new(
      :nome_fantasia => "MyString",
      :razao_social => "MyString",
      :cnpj => "MyString"
    ))
  end

  it "renders new pessoa_juridica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_juridicas_path, "post" do

      assert_select "input#pessoa_juridica_nome_fantasia[name=?]", "pessoa_juridica[nome_fantasia]"

      assert_select "input#pessoa_juridica_razao_social[name=?]", "pessoa_juridica[razao_social]"

      assert_select "input#pessoa_juridica_cnpj[name=?]", "pessoa_juridica[cnpj]"
    end
  end
end
