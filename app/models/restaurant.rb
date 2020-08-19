class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates_inclusion_of :category, :in => ["chinese", "italian", "japanese", "french", "belgian"], :message => "Must be chinese, italian, japanese, french or belgian"
end
