class Acomodacao < ApplicationRecord
  enum status: [ :apartamento, :casa, :hotel ]

  has_many_attached :files
end
