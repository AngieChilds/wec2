require 'spec_helper'

describe "webinars/index" do
  before(:each) do
    assign(:webinars, [
      stub_model(Webinar,
        :title => "Title",
        :overview => "MyText",
        :duration => 1,
        :presenter => "Presenter",
        :presinfo => "MyText",
        :cost => 2
      ),
      stub_model(Webinar,
        :title => "Title",
        :overview => "MyText",
        :duration => 1,
        :presenter => "Presenter",
        :presinfo => "MyText",
        :cost => 2
      )
    ])
  end

  it "renders a list of webinars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Presenter".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
