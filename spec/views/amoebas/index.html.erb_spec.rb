require 'spec_helper'

describe "amoebas/index" do
  before(:each) do
    assign(:amoebas, [
      stub_model(Amoeba),
      stub_model(Amoeba)
    ])
  end

  it "renders a list of amoebas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
