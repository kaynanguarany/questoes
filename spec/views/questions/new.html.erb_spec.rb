require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :title => "MyString",
      :subject => "MyString",
      :user => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_title[name=?]", "question[title]"

      assert_select "input#question_subject[name=?]", "question[subject]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
