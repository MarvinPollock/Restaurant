require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :name => "MyString",
      :price => "9.99",
      :desrc => "MyString",
      :articleID => 1
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "input#article_name", :name => "article[name]"
      assert_select "input#article_price", :name => "article[price]"
      assert_select "input#article_desrc", :name => "article[desrc]"
      assert_select "input#article_articleID", :name => "article[articleID]"
    end
  end
end
