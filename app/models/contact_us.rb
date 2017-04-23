class ContactUs
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :address, type: String
  field :address_embedded, type: String

end