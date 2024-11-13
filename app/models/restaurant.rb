class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italien", "japanese","french", "belgian"]}

  def average_rating
    return 0 if reviews.empty?  # Si aucun avis, renvoie 0
    reviews.average(:rating).to_f.round(1)  # Moyenne arrondie à 1 décimale
  end
end
