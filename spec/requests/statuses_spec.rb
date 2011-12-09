require 'spec_helper'

describe "Statuses" do
  
  def login_user
    user = Factory.create(:user)
    post_via_redirect user_session_path 'user[email]' => user.email, 'user[password]' => user.password
  end
  
  describe "GET /statuses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      login_user
      get statuses_path
      response.status.should be(200)
    end
  end
end
