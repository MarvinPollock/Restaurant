require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :tableNumber => 1,
      :totalOrder => "9.99"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_tableNumber", :name => "customer[tableNumber]"
      assert_select "input#customer_totalOrder", :name => "customer[totalOrder]"
    end
  end
end
