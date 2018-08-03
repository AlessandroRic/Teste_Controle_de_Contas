require 'rails_helper'

RSpec.describe "conta/show", type: :view do
  before(:each) do
    @contum = assign(:contum, Contum.create!(
      :nome => "Nome",
      :saldo => "9.99",
      :situacao => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
