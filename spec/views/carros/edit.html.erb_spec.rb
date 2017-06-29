require 'rails_helper'

RSpec.describe "carros/edit", type: :view do
  before(:each) do
    @carro = assign(:carro, Carro.create!(
      :name => "MyString",
      :marca => "MyString"
    ))
  end

  it "renders the edit carro form" do
    render

    assert_select "form[action=?][method=?]", carro_path(@carro), "post" do

      assert_select "input[name=?]", "carro[name]"

      assert_select "input[name=?]", "carro[marca]"
    end
  end
end
