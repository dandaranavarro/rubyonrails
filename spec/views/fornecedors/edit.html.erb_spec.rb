require 'rails_helper'

RSpec.describe "fornecedors/edit", type: :view do
  before(:each) do
    @fornecedor = assign(:fornecedor, Fornecedor.create!(
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedor_path(@fornecedor), "post" do

      assert_select "input[name=?]", "fornecedor[name]"

      assert_select "input[name=?]", "fornecedor[address]"
    end
  end
end
