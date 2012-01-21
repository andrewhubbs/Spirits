require 'spec_helper'

describe "spirits/show" do
  before(:each) do
    @spirit = assign(:spirit, stub_model(Spirit,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Base/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Methodology/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Age/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Producer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
