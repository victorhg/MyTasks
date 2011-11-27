require 'spec_helper'

describe "appconfigs/show.html.haml" do
  before(:each) do
    @appconfig = assign(:appconfig, stub_model(Appconfig,
      :description => "Description",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
