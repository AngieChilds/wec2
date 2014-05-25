require 'spec_helper'

describe "webinars/new" do
  before(:each) do
    assign(:webinar, stub_model(Webinar,
      :title => "MyString",
      :overview => "MyText",
      :duration => 1,
      :presenter => "MyString",
      :presinfo => "MyText",
      :cost => 1
    ).as_new_record)
  end

  it "renders new webinar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", webinars_path, "post" do
      assert_select "input#webinar_title[name=?]", "webinar[title]"
      assert_select "textarea#webinar_overview[name=?]", "webinar[overview]"
      assert_select "input#webinar_duration[name=?]", "webinar[duration]"
      assert_select "input#webinar_presenter[name=?]", "webinar[presenter]"
      assert_select "textarea#webinar_presinfo[name=?]", "webinar[presinfo]"
      assert_select "input#webinar_cost[name=?]", "webinar[cost]"
    end
  end
end
