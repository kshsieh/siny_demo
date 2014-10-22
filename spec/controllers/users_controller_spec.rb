require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { FactoryGirl.create :user }

  describe "GET index" do
    it "returns all users" do
      get :index
      expect(assigns(:users)).to include(user)
    end
  end

  describe "GET show" do
    it "returns a user" do
      get :show, id: user.id
      expect(assigns(:user)).to eq user
    end
  end

  describe "POST create" do
    it "creates a user" do
      expect{ post :create, name: Faker::Name.name, 
                            email: Faker::Internet.email, 
                            phone_number: '3103772609', 
                            age: 21 }.to change { User.count }.by(1)
    end
  end

  describe "PUT update" do
    it "changes the user name" do
      put :update, id: user.id, name: 'John Doe'
      expect(user.reload.name).to eq 'John Doe'
    end
  end
end
