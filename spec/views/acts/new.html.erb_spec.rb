require 'spec_helper'

describe "acts/new" do
  before(:each) do
    assign(:act, stub_model(Act).as_new_record)
  end

  it "renders new act form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", acts_path, "post" do
    end
  end
end
