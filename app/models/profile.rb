class Profile < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  belongs_to :sexuality
  belongs_to :identity
end
