class Email < ApplicationRecord
  belongs_to :site, optional: true
  validates_format_of :address, with: /\A\s*([^@\\s]{1,64})@((?:[-\p{L}\d]+\.)+\p{L}{2,})\s*\z/, message: "Invalid email format"
  validates :address, uniqueness: true
end
