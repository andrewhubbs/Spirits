require 'spec_helper'

describe "spirits/index" do
  before(:each) do
    assign(:spirits, [
      stub_model(Spirit,
        :category => "Category",
        :name => "Name",
        :base => "Base",
        :methodology => "Methodology",
        :age => "Age",
        :proof => 1,
        :producer => "Producer",
        :location => "Location",
        :miscellaneous => "MyText",
        :description => "MyText"
      ),
      stub_model(Spirit,
        :category => "Category",
        :name => "Name",
        :base => "Base",
        :methodology => "Methodology",
        :age => "Age",
        :proof => 1,
        :producer => "Producer",
        :location => "Location",
        :miscellaneous => "MyText",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of spirits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Base".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Methodology".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Producer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
