require 'rails_helper'

RSpec.describe "help_tickets/index", type: :view do
  before(:each) do
    assign(:help_tickets, [
      HelpTicket.create!(
        :user => nil,
        :project => nil,
        :subject => "Subject",
        :body => "MyText",
        :urgent => false,
        :status => 2
      ),
      HelpTicket.create!(
        :user => nil,
        :project => nil,
        :subject => "Subject",
        :body => "MyText",
        :urgent => false,
        :status => 2
      )
    ])
  end

  it "renders a list of help_tickets" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
