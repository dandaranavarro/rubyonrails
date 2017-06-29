require 'rails_helper'

RSpec.describe "carros/index", type: :view do
  before(:each) do
    assign(:carros, [
      Carro.create!(
        :name => "Name",
        :marca => "Marca"
      ),
      Carro.create!(
        :name => "Name",
        :marca => "Marca"
      )
    ])
  end

  it "renders a list of carros" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
  end
end
