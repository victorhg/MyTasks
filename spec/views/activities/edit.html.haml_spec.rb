require 'spec_helper'

describe "activities/edit.html.haml" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "RSpec Activity",
      :description => "RSpec Activity Description",
      :status_id => 1,
      :priority_id => 1
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
      assert_select "textarea#activity_description", :name => "activity[description]"
      assert_select "input#activity_status_id", :name => "activity[status_id]"
      assert_select "input#activity_priority_id", :name => "activity[priority_id]"
    end
  end
end
