require 'rails_helper'

RSpec.describe "conta/edit", type: :view do
  before(:each) do
    @contum = assign(:contum, Contum.create!(
      :nome => "MyString",
      :saldo => "9.99",
      :situacao => 1
    ))
  end

  it "renders the edit contum form" do
    render

    assert_select "form[action=?][method=?]", contum_path(@contum), "post" do

      assert_select "input#contum_nome[name=?]", "contum[nome]"

      assert_select "input#contum_saldo[name=?]", "contum[saldo]"

      assert_select "input#contum_situacao[name=?]", "contum[situacao]"
    end
  end
end
