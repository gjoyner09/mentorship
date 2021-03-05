class Profile < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  belongs_to :sexuality
  belongs_to :identity
  has_one_attached :picture
end
