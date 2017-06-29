require 'rails_helper'

RSpec.describe "clientes/new", type: :view do
  before(:each) do
    assign(:cliente, Cliente.new(
      :nome => "MyString",
      :ativo => false,
      :altura => 1.5
    ))
  end

  it "renders new cliente form" do
    render

    assert_select "form[action=?][method=?]", clientes_path, "post" do

      assert_select "input[name=?]", "cliente[nome]"

      assert_select "input[name=?]", "cliente[ativo]"

      assert_select "input[name=?]", "cliente[altura]"
    end
  end
end
