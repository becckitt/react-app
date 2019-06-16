require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  describe "GET /api/users" do
    it "should fetch json results successfully" do
      get :index, format: :json
      expect(response).to be_success
    end
  end
end
