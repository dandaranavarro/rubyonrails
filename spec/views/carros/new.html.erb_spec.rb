require 'rails_helper'

RSpec.describe "carros/new", type: :view do
  before(:each) do
    assign(:carro, Carro.new(
      :name => "MyString",
      :marca => "MyString"
    ))
  end

  it "renders new carro form" do
    render

    assert_select "form[action=?][method=?]", carros_path, "post" do

      assert_select "input[name=?]", "carro[name]"

      assert_select "input[name=?]", "carro[marca]"
    end
  end
end
