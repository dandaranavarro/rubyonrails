require 'rails_helper'

RSpec.describe "clientes/index", type: :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        :nome => "Nome",
        :ativo => false,
        :altura => 2.5
      ),
      Cliente.create!(
        :nome => "Nome",
        :ativo => false,
        :altura => 2.5
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
