class Student < ActiveRecord::Base
  has_one :quiz
  has_one :program
  has_one :post
  has_one :comment
  has_one :forum
  has_one :google
  has_one :experiment
  has_one :reminder
  has_one :controlgroup
end
