require 'rails_helper'

RSpec.describe "HelpTickets", type: :request do
  describe "GET /help_tickets" do
    it "works! (now write some real specs)" do
      get help_tickets_path
      expect(response).to have_http_status(200)
    end
  end
end
