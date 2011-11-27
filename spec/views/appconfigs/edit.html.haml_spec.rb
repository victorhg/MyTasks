require 'spec_helper'

describe "appconfigs/edit.html.haml" do
  before(:each) do
    @appconfig = assign(:appconfig, stub_model(Appconfig,
      :description => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit appconfig form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => appconfigs_path(@appconfig), :method => "post" do
      assert_select "input#appconfig_description", :name => "appconfig[description]"
      assert_select "input#appconfig_value", :name => "appconfig[value]"
    end
  end
end
