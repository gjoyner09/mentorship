class Profile < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  belongs_to :sexuality
  belongs_to :identity
  belongs_to :user
  has_one_attached :picture

  validates :name, :age, :reason_for_interest, :interests, :discussion_topics, presence: true
  validates :age, numericality: { only_integer: true }
  validates :age, numericality: { greater_than_or_equal_to: 18 }
  validates :age, numericality: { less_than_or_equal_to: 100 }
  validates :reason_for_interest, length: { in: 10..150 }
  validates :interests, length: { in: 10..150 }
  validates :discussion_topics, length: { in: 10..150 }

  before_save
  
  private
  
  def remove_white_space
    self.name = self.name.strip
    self.reason_for_interest = self.reason_for_interest.strip
    self.interests = self.interests.strip
    self.discussion_topics = self.discussion_topics.strip
  end

end
