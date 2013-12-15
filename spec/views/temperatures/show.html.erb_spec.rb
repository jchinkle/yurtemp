require 'spec_helper'

describe "temperatures/show" do
  before(:each) do
    @temperature = assign(:temperature, stub_model(Temperature,
      :degrees => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/1.5/)
  end
end
