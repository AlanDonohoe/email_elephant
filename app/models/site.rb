class Site < ApplicationRecord
  has_many :emails
  accepts_nested_attributes_for :emails
end
