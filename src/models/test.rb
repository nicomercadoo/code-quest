class Test < ActiveRecord::Base
  validates :letter, presence: true
  validates :description, presence: true
  validates :cant_questions, presence: true

  has_many :lessons
  has_many :questions
  has_many :options
  has_many :accounts, through: :accounts_tests
  has_many :accounts_tests
end
