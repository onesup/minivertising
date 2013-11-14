require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "Title",
      :sub_title => "Sub Title",
      :description => "Description",
      :category => "Category",
      :client => "Client",
      :link => "Link",
      :project_image => "Project Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Sub Title/)
    rendered.should match(/Description/)
    rendered.should match(/Category/)
    rendered.should match(/Client/)
    rendered.should match(/Link/)
    rendered.should match(/Project Image/)
  end
end
