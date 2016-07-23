class Site < ApplicationRecord
  has_many :emails
  accepts_nested_attributes_for :emails
  validates_format_of :url, with: /^(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, message: "Invalid URL format"
  validates :url, uniqueness: true
end
