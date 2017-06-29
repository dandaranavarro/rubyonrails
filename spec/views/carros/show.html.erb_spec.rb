require 'rails_helper'

RSpec.describe "carros/show", type: :view do
  before(:each) do
    @carro = assign(:carro, Carro.create!(
      :name => "Name",
      :marca => "Marca"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Marca/)
  end
end
