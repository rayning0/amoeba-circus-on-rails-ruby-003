require 'spec_helper'

describe "amoebas/show" do
  before(:each) do
    @amoeba = assign(:amoeba, stub_model(Amoeba))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
