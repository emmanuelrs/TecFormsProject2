require 'rails_helper'

RSpec.describe "surveys/show", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :questionN => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
