require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "Nome",
      :ativo => false,
      :altura => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
  end
end
