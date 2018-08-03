require 'rails_helper'

RSpec.describe "pessoa_fisicas/index", type: :view do
  before(:each) do
    assign(:pessoa_fisicas, [
      PessoaFisica.create!(
        :nome => "Nome",
        :cpf => "Cpf"
      ),
      PessoaFisica.create!(
        :nome => "Nome",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of pessoa_fisicas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
