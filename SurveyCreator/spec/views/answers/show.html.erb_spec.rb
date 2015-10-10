require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :name_option => "Name Option"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name Option/)
  end
end
