require 'spec_helper'

describe "spirits/new" do
  before(:each) do
    assign(:spirit, stub_model(Spirit,
      :category => "MyString",
      :name => "MyString",
      :base => "MyString",
      :methodology => "MyString",
      :age => "MyString",
      :proof => 1,
      :producer => "MyString",
      :location => "MyString",
      :miscellaneous => "MyText",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new spirit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spirits_path, :method => "post" do
      assert_select "input#spirit_category", :name => "spirit[category]"
      assert_select "input#spirit_name", :name => "spirit[name]"
      assert_select "input#spirit_base", :name => "spirit[base]"
      assert_select "input#spirit_methodology", :name => "spirit[methodology]"
      assert_select "input#spirit_age", :name => "spirit[age]"
      assert_select "input#spirit_proof", :name => "spirit[proof]"
      assert_select "input#spirit_producer", :name => "spirit[producer]"
      assert_select "input#spirit_location", :name => "spirit[location]"
      assert_select "textarea#spirit_miscellaneous", :name => "spirit[miscellaneous]"
      assert_select "textarea#spirit_description", :name => "spirit[description]"
    end
  end
end
