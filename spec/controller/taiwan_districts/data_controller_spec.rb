require 'rails_helper'

describe TaiwanDistricts::DataController, type: :controller do
  describe "GET 'show'" do
    it "returns http success" do
      @routes = TaiwanDistricts::Engine.routes
      get 'show', id: '00000'
      expect(response).to have_http_status(200)
    end
  end
end
