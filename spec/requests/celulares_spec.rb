require 'rails_helper'

RSpec.describe "Celulares", :type => :request do
  describe "GET /celulares" do
    it "works! (now write some real specs)" do
      get celulares_path
      expect(response).to have_http_status(200)
    end
  end
end
