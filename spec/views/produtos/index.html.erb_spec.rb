require 'rails_helper'

RSpec.describe "produtos/index", type: :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :name => "Name",
        :price => 2
      ),
      Produto.create!(
        :name => "Name",
        :price => 2
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
