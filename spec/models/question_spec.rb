require 'rails_helper'

RSpec.describe Question do
  it "is invalid without a title" do
    question = build(:question, title: nil)
    # question = Question.new title: nil, subject: "medaumola"
    expect(question).not_to be_valid
  end

  it "is invalid without a subject" do
    question = Question.new title: "teste", subject: nil
    expect(question).not_to be_valid
  end
end
