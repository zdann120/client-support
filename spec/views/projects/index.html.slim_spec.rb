require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :organization => nil,
        :title => "Title",
        :secret_key => "",
        :status => 2,
        :description => "MyText"
      ),
      Project.create!(
        :organization => nil,
        :title => "Title",
        :secret_key => "",
        :status => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
