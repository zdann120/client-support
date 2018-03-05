require "rails_helper"

RSpec.describe HelpTicketsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/help_tickets").to route_to("help_tickets#index")
    end

    it "routes to #new" do
      expect(:get => "/help_tickets/new").to route_to("help_tickets#new")
    end

    it "routes to #show" do
      expect(:get => "/help_tickets/1").to route_to("help_tickets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/help_tickets/1/edit").to route_to("help_tickets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/help_tickets").to route_to("help_tickets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/help_tickets/1").to route_to("help_tickets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/help_tickets/1").to route_to("help_tickets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/help_tickets/1").to route_to("help_tickets#destroy", :id => "1")
    end

  end
end
