require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :oderID => 1,
        :price => "9.99",
        :comment => "Comment",
        :tableNumber => 2
      ),
      stub_model(Order,
        :oderID => 1,
        :price => "9.99",
        :comment => "Comment",
        :tableNumber => 2
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
