require 'rails_helper'

RSpec.describe "UserRspecs", type: :request do
  describe "GET /user_rspecs" do
    it "works! (now write some real specs)" do
      get user_rspecs_path
      expect(response).to have_http_status(200)
    end
  end
end
