require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :title => "Title",
        :sub_title => "Sub Title",
        :description => "Description",
        :category => "Category",
        :client => "Client",
        :link => "Link",
        :project_image => "Project Image"
      ),
      stub_model(Project,
        :title => "Title",
        :sub_title => "Sub Title",
        :description => "Description",
        :category => "Category",
        :client => "Client",
        :link => "Link",
        :project_image => "Project Image"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Project Image".to_s, :count => 2
  end
end
