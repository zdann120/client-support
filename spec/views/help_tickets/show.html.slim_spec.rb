require 'rails_helper'

RSpec.describe "help_tickets/show", type: :view do
  before(:each) do
    @help_ticket = assign(:help_ticket, HelpTicket.create!(
      :user => nil,
      :project => nil,
      :subject => "Subject",
      :body => "MyText",
      :urgent => false,
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
