require 'rails_helper'

RSpec.describe "conta/index", type: :view do
  before(:each) do
    assign(:conta, [
      Contum.create!(
        :nome => "Nome",
        :saldo => "9.99",
        :situacao => 2
      ),
      Contum.create!(
        :nome => "Nome",
        :saldo => "9.99",
        :situacao => 2
      )
    ])
  end

  it "renders a list of conta" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
