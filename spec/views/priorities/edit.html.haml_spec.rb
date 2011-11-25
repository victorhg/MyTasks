require 'spec_helper'

describe "priorities/edit.html.haml" do
  before(:each) do
    @priority = assign(:priority, stub_model(Priority,
      :name => "MyString"
    ))
  end

  it "renders the edit priority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => priorities_path(@priority), :method => "post" do
      assert_select "input#priority_name", :name => "priority[name]"
    end
  end
end
