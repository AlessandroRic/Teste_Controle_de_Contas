require 'rails_helper'

RSpec.describe "conta/new", type: :view do
  before(:each) do
    assign(:contum, Contum.new(
      :nome => "MyString",
      :saldo => "9.99",
      :situacao => 1
    ))
  end

  it "renders new contum form" do
    render

    assert_select "form[action=?][method=?]", conta_path, "post" do

      assert_select "input#contum_nome[name=?]", "contum[nome]"

      assert_select "input#contum_saldo[name=?]", "contum[saldo]"

      assert_select "input#contum_situacao[name=?]", "contum[situacao]"
    end
  end
end
