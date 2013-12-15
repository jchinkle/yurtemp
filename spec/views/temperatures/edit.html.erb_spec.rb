require 'spec_helper'

describe "temperatures/edit" do
  before(:each) do
    @temperature = assign(:temperature, stub_model(Temperature,
      :degrees => 1.5
    ))
  end

  it "renders the edit temperature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temperature_path(@temperature), "post" do
      assert_select "input#temperature_degrees[name=?]", "temperature[degrees]"
    end
  end
end
