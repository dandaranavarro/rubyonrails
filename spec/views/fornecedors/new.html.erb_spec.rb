require 'rails_helper'

RSpec.describe "fornecedors/new", type: :view do
  before(:each) do
    assign(:fornecedor, Fornecedor.new(
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedors_path, "post" do

      assert_select "input[name=?]", "fornecedor[name]"

      assert_select "input[name=?]", "fornecedor[address]"
    end
  end
end
