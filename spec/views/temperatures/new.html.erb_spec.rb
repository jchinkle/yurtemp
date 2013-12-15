require 'spec_helper'

describe "temperatures/new" do
  before(:each) do
    assign(:temperature, stub_model(Temperature,
      :degrees => 1.5
    ).as_new_record)
  end

  it "renders new temperature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temperatures_path, "post" do
      assert_select "input#temperature_degrees[name=?]", "temperature[degrees]"
    end
  end
end
