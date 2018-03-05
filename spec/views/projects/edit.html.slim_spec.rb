require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :organization => nil,
      :title => "MyString",
      :secret_key => "",
      :status => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input[name=?]", "project[organization_id]"

      assert_select "input[name=?]", "project[title]"

      assert_select "input[name=?]", "project[secret_key]"

      assert_select "input[name=?]", "project[status]"

      assert_select "textarea[name=?]", "project[description]"
    end
  end
end
