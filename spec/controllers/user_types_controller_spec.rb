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

describe UserTypesController do

  # This should return the minimal set of attributes required to create a valid
  # UserType. As you add validations to UserType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all user_types as @user_types" do
      user_type = UserType.create! valid_attributes
      get :index
      assigns(:user_types).should eq([user_type])
    end
  end

  describe "GET show" do
    it "assigns the requested user_type as @user_type" do
      user_type = UserType.create! valid_attributes
      get :show, :id => user_type.id
      assigns(:user_type).should eq(user_type)
    end
  end

  describe "GET new" do
    it "assigns a new user_type as @user_type" do
      get :new
      assigns(:user_type).should be_a_new(UserType)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_type as @user_type" do
      user_type = UserType.create! valid_attributes
      get :edit, :id => user_type.id
      assigns(:user_type).should eq(user_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserType" do
        expect {
          post :create, :user_type => valid_attributes
        }.to change(UserType, :count).by(1)
      end

      it "assigns a newly created user_type as @user_type" do
        post :create, :user_type => valid_attributes
        assigns(:user_type).should be_a(UserType)
        assigns(:user_type).should be_persisted
      end

      it "redirects to the created user_type" do
        post :create, :user_type => valid_attributes
        response.should redirect_to(UserType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_type as @user_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserType.any_instance.stub(:save).and_return(false)
        post :create, :user_type => {}
        assigns(:user_type).should be_a_new(UserType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserType.any_instance.stub(:save).and_return(false)
        post :create, :user_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_type" do
        user_type = UserType.create! valid_attributes
        # Assuming there are no other user_types in the database, this
        # specifies that the UserType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserType.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => user_type.id, :user_type => {'these' => 'params'}
      end

      it "assigns the requested user_type as @user_type" do
        user_type = UserType.create! valid_attributes
        put :update, :id => user_type.id, :user_type => valid_attributes
        assigns(:user_type).should eq(user_type)
      end

      it "redirects to the user_type" do
        user_type = UserType.create! valid_attributes
        put :update, :id => user_type.id, :user_type => valid_attributes
        response.should redirect_to(user_type)
      end
    end

    describe "with invalid params" do
      it "assigns the user_type as @user_type" do
        user_type = UserType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserType.any_instance.stub(:save).and_return(false)
        put :update, :id => user_type.id, :user_type => {}
        assigns(:user_type).should eq(user_type)
      end

      it "re-renders the 'edit' template" do
        user_type = UserType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserType.any_instance.stub(:save).and_return(false)
        put :update, :id => user_type.id, :user_type => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_type" do
      user_type = UserType.create! valid_attributes
      expect {
        delete :destroy, :id => user_type.id
      }.to change(UserType, :count).by(-1)
    end

    it "redirects to the user_types list" do
      user_type = UserType.create! valid_attributes
      delete :destroy, :id => user_type.id
      response.should redirect_to(user_types_url)
    end
  end

end
