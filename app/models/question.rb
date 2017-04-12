class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :subject, presence: true
  belongs_to :user
end
