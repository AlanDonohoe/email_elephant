class EmailSerializer < ActiveModel::Serializer
  attributes :id, :address
  belongs_to :site
end
