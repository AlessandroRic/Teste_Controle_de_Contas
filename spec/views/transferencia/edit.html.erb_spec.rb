require 'rails_helper'

RSpec.describe "transferencia/edit", type: :view do
  before(:each) do
    @transferencium = assign(:transferencium, Transferencium.create!(
      :codigo_alfa_numerico => "MyString",
      :tipo => 1,
      :valor => "9.99",
      :estorno => false,
      :codigo_estorno => "MyString",
      :conta_debitada_saldo => "9.99",
      :conta_creditada_saldo => "9.99"
    ))
  end

  it "renders the edit transferencium form" do
    render

    assert_select "form[action=?][method=?]", transferencium_path(@transferencium), "post" do

      assert_select "input#transferencium_codigo_alfa_numerico[name=?]", "transferencium[codigo_alfa_numerico]"

      assert_select "input#transferencium_tipo[name=?]", "transferencium[tipo]"

      assert_select "input#transferencium_valor[name=?]", "transferencium[valor]"

      assert_select "input#transferencium_estorno[name=?]", "transferencium[estorno]"

      assert_select "input#transferencium_codigo_estorno[name=?]", "transferencium[codigo_estorno]"

      assert_select "input#transferencium_conta_debitada_saldo[name=?]", "transferencium[conta_debitada_saldo]"

      assert_select "input#transferencium_conta_creditada_saldo[name=?]", "transferencium[conta_creditada_saldo]"
    end
  end
end
