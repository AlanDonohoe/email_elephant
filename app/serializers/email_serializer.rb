class EmailSerializer < ActiveModel::Serializer
  attributes :id, :address
  belongs_to :site

  # def email_url
  # end
end
