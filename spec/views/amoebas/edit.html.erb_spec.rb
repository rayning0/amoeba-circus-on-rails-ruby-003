require 'spec_helper'

describe "amoebas/edit" do
  before(:each) do
    @amoeba = assign(:amoeba, stub_model(Amoeba))
  end

  it "renders the edit amoeba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", amoeba_path(@amoeba), "post" do
    end
  end
end
