require 'rails_helper'

RSpec.describe SkysController, type: :controller do

  describe "GET #ask" do
    it "returns http success" do
      get :ask
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #get" do
    it "returns http success" do
      get :get
      expect(response).to have_http_status(:success)
    end
  end

end
