require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :title => "MyString",
      :sub_title => "MyString",
      :description => "MyString",
      :category => "MyString",
      :client => "MyString",
      :link => "MyString",
      :project_image => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_title[name=?]", "project[title]"
      assert_select "input#project_sub_title[name=?]", "project[sub_title]"
      assert_select "input#project_description[name=?]", "project[description]"
      assert_select "input#project_category[name=?]", "project[category]"
      assert_select "input#project_client[name=?]", "project[client]"
      assert_select "input#project_link[name=?]", "project[link]"
      assert_select "input#project_project_image[name=?]", "project[project_image]"
    end
  end
end
