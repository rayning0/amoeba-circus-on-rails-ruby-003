require 'spec_helper'

describe "amoebas/new" do
  before(:each) do
    assign(:amoeba, stub_model(Amoeba).as_new_record)
  end

  it "renders new amoeba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", amoebas_path, "post" do
    end
  end
end
