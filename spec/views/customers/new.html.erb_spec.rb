require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :tableNumber => 1,
      :totalOrder => "9.99"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_tableNumber", :name => "customer[tableNumber]"
      assert_select "input#customer_totalOrder", :name => "customer[totalOrder]"
    end
  end
end
