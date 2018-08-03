require 'rails_helper'

RSpec.describe "pessoa_juridicas/edit", type: :view do
  before(:each) do
    @pessoa_juridica = assign(:pessoa_juridica, PessoaJuridica.create!(
      :nome_fantasia => "MyString",
      :razao_social => "MyString",
      :cnpj => "MyString"
    ))
  end

  it "renders the edit pessoa_juridica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_juridica_path(@pessoa_juridica), "post" do

      assert_select "input#pessoa_juridica_nome_fantasia[name=?]", "pessoa_juridica[nome_fantasia]"

      assert_select "input#pessoa_juridica_razao_social[name=?]", "pessoa_juridica[razao_social]"

      assert_select "input#pessoa_juridica_cnpj[name=?]", "pessoa_juridica[cnpj]"
    end
  end
end
