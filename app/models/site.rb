class Site < ApplicationRecord
  has_many :emails
  belongs_to :user
  accepts_nested_attributes_for :emails
  validates_format_of :domain, with: /\A([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z/, message: "Invalid domain format"
  validates :domain, uniqueness: true
end
