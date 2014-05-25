require 'spec_helper'

describe "webinars/show" do
  before(:each) do
    @webinar = assign(:webinar, stub_model(Webinar,
      :title => "Title",
      :overview => "MyText",
      :duration => 1,
      :presenter => "Presenter",
      :presinfo => "MyText",
      :cost => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Presenter/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
