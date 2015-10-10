require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :name_option => "Name Option"
      ),
      Answer.create!(
        :name_option => "Name Option"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Name Option".to_s, :count => 2
  end
end
