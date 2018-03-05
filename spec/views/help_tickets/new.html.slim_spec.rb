require 'rails_helper'

RSpec.describe "help_tickets/new", type: :view do
  before(:each) do
    assign(:help_ticket, HelpTicket.new(
      :user => nil,
      :project => nil,
      :subject => "MyString",
      :body => "MyText",
      :urgent => false,
      :status => 1
    ))
  end

  it "renders new help_ticket form" do
    render

    assert_select "form[action=?][method=?]", help_tickets_path, "post" do

      assert_select "input[name=?]", "help_ticket[user_id]"

      assert_select "input[name=?]", "help_ticket[project_id]"

      assert_select "input[name=?]", "help_ticket[subject]"

      assert_select "textarea[name=?]", "help_ticket[body]"

      assert_select "input[name=?]", "help_ticket[urgent]"

      assert_select "input[name=?]", "help_ticket[status]"
    end
  end
end
