require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :oderID => 1,
      :price => "9.99",
      :comment => "MyString",
      :tableNumber => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_oderID", :name => "order[oderID]"
      assert_select "input#order_price", :name => "order[price]"
      assert_select "input#order_comment", :name => "order[comment]"
      assert_select "input#order_tableNumber", :name => "order[tableNumber]"
    end
  end
end
