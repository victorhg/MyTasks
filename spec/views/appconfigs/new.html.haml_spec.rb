require 'spec_helper'

describe "appconfigs/new.html.haml" do
  before(:each) do
    assign(:appconfig, stub_model(Appconfig,
      :description => "MyString",
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new appconfig form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => appconfigs_path, :method => "post" do
      assert_select "input#appconfig_description", :name => "appconfig[description]"
      assert_select "input#appconfig_value", :name => "appconfig[value]"
    end
  end
end
