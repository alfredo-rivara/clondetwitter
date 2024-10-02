class Tweet < ApplicationRecord
  validates :description, presence: true
  validates :username, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_description_and_username,
                  against: [ :description, :username ],
                  # Agregamos búsquedas 'parciales' al buscador de tweets:
                  using: {
                    tsearch: { prefix: true }
                  }
end
