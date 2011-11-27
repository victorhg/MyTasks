require 'spec_helper'

describe "appconfigs/index.html.haml" do
  before(:each) do
    assign(:appconfigs, [
      stub_model(Appconfig,
        :description => "Description",
        :value => "Value"
      ),
      stub_model(Appconfig,
        :description => "Description",
        :value => "Value"
      )
    ])
  end

  it "renders a list of appconfigs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
