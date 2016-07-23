class SiteSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_many :emails

  # def site_url
  #   # object
  # end
end
