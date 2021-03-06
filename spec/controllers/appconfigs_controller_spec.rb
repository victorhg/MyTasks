require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AppconfigsController do
  login_user

  # This should return the minimal set of attributes required to create a valid
  # Appconfig. As you add validations to Appconfig, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:description => "STATUS", :value => 1}
  end

  describe "GET index" do
    it "assigns all appconfigs as @appconfigs" do
      appconfig = Appconfig.create! valid_attributes
      get :index
      assigns(:appconfigs).should eq([appconfig])
    end
  end

  describe "GET show" do
    it "assigns the requested appconfig as @appconfig" do
      appconfig = Appconfig.create! valid_attributes
      get :show, :id => appconfig.id
      assigns(:appconfig).should eq(appconfig)
    end
  end

  describe "GET new" do
    it "assigns a new appconfig as @appconfig" do
      get :new
      assigns(:appconfig).should be_a_new(Appconfig)
    end
  end

  describe "GET edit" do
    it "assigns the requested appconfig as @appconfig" do
      appconfig = Appconfig.create! valid_attributes
      get :edit, :id => appconfig.id
      assigns(:appconfig).should eq(appconfig)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Appconfig" do
        expect {
          post :create, :appconfig => valid_attributes
        }.to change(Appconfig, :count).by(1)
      end

      it "assigns a newly created appconfig as @appconfig" do
        post :create, :appconfig => valid_attributes
        assigns(:appconfig).should be_a(Appconfig)
        assigns(:appconfig).should be_persisted
      end

      it "redirects to the created appconfig" do
        post :create, :appconfig => valid_attributes
        response.should redirect_to(Appconfig.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved appconfig as @appconfig" do
        # Trigger the behavior that occurs when invalid params are submitted
        Appconfig.any_instance.stub(:save).and_return(false)
        post :create, :appconfig => {}
        assigns(:appconfig).should be_a_new(Appconfig)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Appconfig.any_instance.stub(:save).and_return(false)
        post :create, :appconfig => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested appconfig" do
        appconfig = Appconfig.create! valid_attributes
        # Assuming there are no other appconfigs in the database, this
        # specifies that the Appconfig created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Appconfig.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => appconfig.id, :appconfig => {'these' => 'params'}
      end

      it "assigns the requested appconfig as @appconfig" do
        appconfig = Appconfig.create! valid_attributes
        put :update, :id => appconfig.id, :appconfig => valid_attributes
        assigns(:appconfig).should eq(appconfig)
      end

      it "redirects to the appconfig" do
        appconfig = Appconfig.create! valid_attributes
        put :update, :id => appconfig.id, :appconfig => valid_attributes
        response.should redirect_to(appconfig)
      end
    end

    describe "with invalid params" do
      it "assigns the appconfig as @appconfig" do
        appconfig = Appconfig.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Appconfig.any_instance.stub(:save).and_return(false)
        put :update, :id => appconfig.id, :appconfig => {}
        assigns(:appconfig).should eq(appconfig)
      end

      it "re-renders the 'edit' template" do
        appconfig = Appconfig.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Appconfig.any_instance.stub(:save).and_return(false)
        put :update, :id => appconfig.id, :appconfig => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested appconfig" do
      appconfig = Appconfig.create! valid_attributes
      expect {
        delete :destroy, :id => appconfig.id
      }.to change(Appconfig, :count).by(-1)
    end

    it "redirects to the appconfigs list" do
      appconfig = Appconfig.create! valid_attributes
      delete :destroy, :id => appconfig.id
      response.should redirect_to(appconfigs_url)
    end
  end

end
