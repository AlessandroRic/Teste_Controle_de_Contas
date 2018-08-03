require 'rails_helper'

RSpec.describe "transferencia/show", type: :view do
  before(:each) do
    @transferencium = assign(:transferencium, Transferencium.create!(
      :codigo_alfa_numerico => "Codigo Alfa Numerico",
      :tipo => 2,
      :valor => "9.99",
      :estorno => false,
      :codigo_estorno => "Codigo Estorno",
      :conta_debitada_saldo => "9.99",
      :conta_creditada_saldo => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo Alfa Numerico/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Codigo Estorno/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
