require 'spec_helper'

describe "temperatures/index" do
  before(:each) do
    assign(:temperatures, [
      stub_model(Temperature,
        :degrees => 1.5
      ),
      stub_model(Temperature,
        :degrees => 1.5
      )
    ])
  end

  it "renders a list of temperatures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
