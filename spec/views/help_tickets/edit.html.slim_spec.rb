require 'rails_helper'

RSpec.describe "help_tickets/edit", type: :view do
  before(:each) do
    @help_ticket = assign(:help_ticket, HelpTicket.create!(
      :user => nil,
      :project => nil,
      :subject => "MyString",
      :body => "MyText",
      :urgent => false,
      :status => 1
    ))
  end

  it "renders the edit help_ticket form" do
    render

    assert_select "form[action=?][method=?]", help_ticket_path(@help_ticket), "post" do

      assert_select "input[name=?]", "help_ticket[user_id]"

      assert_select "input[name=?]", "help_ticket[project_id]"

      assert_select "input[name=?]", "help_ticket[subject]"

      assert_select "textarea[name=?]", "help_ticket[body]"

      assert_select "input[name=?]", "help_ticket[urgent]"

      assert_select "input[name=?]", "help_ticket[status]"
    end
  end
end
