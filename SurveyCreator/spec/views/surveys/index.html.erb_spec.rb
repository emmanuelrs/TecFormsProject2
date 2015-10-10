require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    assign(:surveys, [
      Survey.create!(
        :questionN => "MyText"
      ),
      Survey.create!(
        :questionN => "MyText"
      )
    ])
  end

  it "renders a list of surveys" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
