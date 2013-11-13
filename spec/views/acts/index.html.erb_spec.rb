require 'spec_helper'

describe "acts/index" do
  before(:each) do
    assign(:acts, [
      stub_model(Act),
      stub_model(Act)
    ])
  end

  it "renders a list of acts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
