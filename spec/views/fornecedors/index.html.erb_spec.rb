require 'rails_helper'

RSpec.describe "fornecedors/index", type: :view do
  before(:each) do
    assign(:fornecedors, [
      Fornecedor.create!(
        :name => "Name",
        :address => "Address"
      ),
      Fornecedor.create!(
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of fornecedors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
