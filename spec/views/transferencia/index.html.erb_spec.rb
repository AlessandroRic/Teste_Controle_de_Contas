require 'rails_helper'

RSpec.describe "transferencia/index", type: :view do
  before(:each) do
    assign(:transferencia, [
      Transferencium.create!(
        :codigo_alfa_numerico => "Codigo Alfa Numerico",
        :tipo => 2,
        :valor => "9.99",
        :estorno => false,
        :codigo_estorno => "Codigo Estorno",
        :conta_debitada_saldo => "9.99",
        :conta_creditada_saldo => "9.99"
      ),
      Transferencium.create!(
        :codigo_alfa_numerico => "Codigo Alfa Numerico",
        :tipo => 2,
        :valor => "9.99",
        :estorno => false,
        :codigo_estorno => "Codigo Estorno",
        :conta_debitada_saldo => "9.99",
        :conta_creditada_saldo => "9.99"
      )
    ])
  end

  it "renders a list of transferencia" do
    render
    assert_select "tr>td", :text => "Codigo Alfa Numerico".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Estorno".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
