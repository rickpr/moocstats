class Quiz < ActiveRecord::Base
  belongs_to :student
  has_one :m1
  has_one :m2
  has_one :m3
  has_one :m4
  has_one :m5
  has_one :m6
end
