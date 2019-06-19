require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  describe "GET /api/users" do
    it "should fetch json results successfully" do
      get :index, format: :json
      expect(response).to be_success
    end
  end

  describe "POST /api/user" do
    it "should create a new user successfully" do
      post :create, :params => { :user => {first_name: "Great", last_name: "User", email: "greatuser@gmail.com"}}
      expect(response).to be_success
    end
  end
end
